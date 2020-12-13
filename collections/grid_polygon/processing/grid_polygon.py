from qgis.core import QgsProcessing
from qgis.core import QgsProcessingAlgorithm
from qgis.core import QgsProcessingMultiStepFeedback
from qgis.core import QgsProcessingParameterNumber
from qgis.core import QgsProcessingParameterFeatureSource
from qgis.core import QgsProcessingParameterFeatureSink
from qgis.core import QgsCoordinateReferenceSystem
import processing


class GraticuleOfThePolygon(QgsProcessingAlgorithm):

    def initAlgorithm(self, config=None):
        self.addParameter(QgsProcessingParameterNumber('lat', 'Vertical Spacing (Latitude)', type=QgsProcessingParameterNumber.Double, defaultValue=0))
        self.addParameter(QgsProcessingParameterNumber('long', 'Horizontal Spacing (Longitude)', type=QgsProcessingParameterNumber.Double, defaultValue=0))
        self.addParameter(QgsProcessingParameterFeatureSource('polygon', 'Polygon', types=[QgsProcessing.TypeVectorPolygon], defaultValue=None))
        self.addParameter(QgsProcessingParameterFeatureSink('Grid', 'GRID', type=QgsProcessing.TypeVectorAnyGeometry, createByDefault=True, defaultValue=None))

    def processAlgorithm(self, parameters, context, model_feedback):
        # Use a multi-step feedback, so that individual child algorithm progress reports are adjusted for the
        # overall progress through the model
        feedback = QgsProcessingMultiStepFeedback(10, model_feedback)
        results = {}
        outputs = {}

        # Fix geometries
        alg_params = {
            'INPUT': parameters['polygon'],
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['FixGeometries'] = processing.run('native:fixgeometries', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(1)
        if feedback.isCanceled():
            return {}

        # Geometry by expression
        alg_params = {
            'EXPRESSION': '--\'Create a global polygon\'\nbounds( \ncollect_geometries(\n--Create a P1\nmake_point( \'-180.0000\',\'90.0000\' ),\n--Create a P2\nmake_point(180.0000, 90.0000),\n--Create a P3\nmake_point(180.0000,-90.0000 ),\n--Create a P4\nmake_point(-180.0000, -90.0000)\n))\n',
            'INPUT': parameters['polygon'],
            'OUTPUT_GEOMETRY': 0,
            'WITH_M': False,
            'WITH_Z': False,
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['GeometryByExpression'] = processing.run('qgis:geometrybyexpression', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(2)
        if feedback.isCanceled():
            return {}

        # Create grid
        alg_params = {
            'CRS': QgsCoordinateReferenceSystem('EPSG:4326'),
            'EXTENT': outputs['GeometryByExpression']['OUTPUT'],
            'HOVERLAY': 0,
            'HSPACING': parameters['long'],
            'TYPE': 1,
            'VOVERLAY': 0,
            'VSPACING': parameters['lat'],
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['CreateGrid'] = processing.run('native:creategrid', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(3)
        if feedback.isCanceled():
            return {}

        # Reproject layer
        alg_params = {
            'INPUT': outputs['FixGeometries']['OUTPUT'],
            'TARGET_CRS': QgsCoordinateReferenceSystem('EPSG:4326'),
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['ReprojectLayer'] = processing.run('native:reprojectlayer', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(4)
        if feedback.isCanceled():
            return {}

        # Boundary
        alg_params = {
            'INPUT': outputs['ReprojectLayer']['OUTPUT'],
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['Boundary'] = processing.run('native:boundary', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(5)
        if feedback.isCanceled():
            return {}

        # Fix geometries
        alg_params = {
            'INPUT': outputs['CreateGrid']['OUTPUT'],
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['FixGeometries'] = processing.run('native:fixgeometries', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(6)
        if feedback.isCanceled():
            return {}

        # Line intersections
        alg_params = {
            'INPUT': outputs['FixGeometries']['OUTPUT'],
            'INPUT_FIELDS': None,
            'INTERSECT': outputs['Boundary']['OUTPUT'],
            'INTERSECT_FIELDS': None,
            'INTERSECT_FIELDS_PREFIX': '',
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['LineIntersections'] = processing.run('native:lineintersections', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(7)
        if feedback.isCanceled():
            return {}

        # Refactor fields
        alg_params = {
            'FIELDS_MAPPING': [{'expression': '"id"', 'length': 0, 'name': 'id', 'precision': 0, 'type': 4}, {'expression': "with_variable( \n'latlong', \ncase\nwhen top = bottom then 'lat'\nelse 'lon'\nend , \n\ncoalesce(\n case \n when if(@latlong = 'lat', $x , $y) = \n minimum ( if(@latlong = 'lat', $x , $y) , id) then 'min' \n end \n,\n case \n when \n if(@latlong = 'lat', $x , $y) =\n maximum ( if(@latlong = 'lat', $x , $y) , id) then 'max' \n end \n, \n'del'\n,null)\n)", 'length': 0, 'name': 'min_max', 'precision': 0, 'type': 10}, {'expression': "case\nwhen top = bottom then 'lat'\nelse 'lon'\nend", 'length': 0, 'name': 'lat_lon', 'precision': 0, 'type': 10}],
            'INPUT': outputs['LineIntersections']['OUTPUT'],
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['RefactorFields'] = processing.run('qgis:refactorfields', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(8)
        if feedback.isCanceled():
            return {}

        # Extract by expression
        alg_params = {
            'EXPRESSION': 'min_max <> \'del\'',
            'INPUT': outputs['RefactorFields']['OUTPUT'],
            'OUTPUT': QgsProcessing.TEMPORARY_OUTPUT
        }
        outputs['ExtractByExpression'] = processing.run('native:extractbyexpression', alg_params, context=context, feedback=feedback, is_child_algorithm=True)

        feedback.setCurrentStep(9)
        if feedback.isCanceled():
            return {}

        # Reproject layer
        alg_params = {
            'INPUT': outputs['ExtractByExpression']['OUTPUT'],
            'TARGET_CRS': QgsCoordinateReferenceSystem('EPSG:4326'),
            'OUTPUT': parameters['Grid']
        }
        outputs['ReprojectLayer'] = processing.run('native:reprojectlayer', alg_params, context=context, feedback=feedback, is_child_algorithm=True)
        results['Grid'] = outputs['ReprojectLayer']['OUTPUT']
        return results

    def name(self):
        return 'Graticule of the Polygon'

    def displayName(self):
        return 'Graticule of the Polygon'

    def group(self):
        return 'QGISBR'

    def groupId(self):
        return 'QGISBR'

    def createInstance(self):
        return GraticuleOfThePolygon()
