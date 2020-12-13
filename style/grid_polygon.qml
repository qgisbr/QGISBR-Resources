<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" simplifyLocal="1" maxScale="0" labelsEnabled="1" styleCategories="AllStyleCategories" simplifyMaxScale="1" simplifyDrawingHints="0" version="3.10.12-A Coruña" readOnly="0" simplifyAlgorithm="0" simplifyDrawingTol="1" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" enableorderby="0" type="singleSymbol" symbollevels="0">
    <symbols>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="0">
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <prop k="angle" v="0"/>
          <prop k="color" v="196,60,57,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,-2.60000000000000009"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.6"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="if( &quot;lat_lon&quot; = 'lat',90,0)" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="offset">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="case&#xa;when lat_lon = 'lat' and min_max = 'max' then array('0',-@size/2)&#xa;when lat_lon = 'lat' and min_max = 'min' then array('0',@size/2)&#xa;when lat_lon = 'lon' and min_max = 'min' then array('0',@size/2)&#xa;when lat_lon = 'lon' and min_max = 'max' then array('0',-@size/2)&#xa;end" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="@size -1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{50669e4e-3899-49dc-9e89-58eff77dab9e}">
      <rule description="DMS" key="{a1096051-1d85-4b3a-b5ef-81dc3092ddbd}">
        <settings calloutType="simple">
          <text-style namedStyle="Regular" isExpression="1" textOrientation="horizontal" textOpacity="1" fontUnderline="0" fontWeight="50" multilineHeight="1" fontStrikeout="0" fieldName="eval( @label_DMS )" fontSizeUnit="Point" fontKerning="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="0,0,0,255" fontCapitals="0" fontItalic="0" blendMode="0" fontWordSpacing="0" fontFamily="Ubuntu" useSubstitutions="0" fontLetterSpacing="0" fontSize="10" previewBkgrdColor="255,255,255,255">
            <text-buffer bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferColor="255,255,255,255" bufferOpacity="1" bufferSize="1" bufferBlendMode="0" bufferJoinStyle="128"/>
            <background shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeX="0" shapeSizeType="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeJoinStyle="64" shapeOffsetX="0" shapeOpacity="1" shapeSVGFile="" shapeRadiiY="0" shapeDraw="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRotationType="0" shapeType="0" shapeRadiiUnit="MM" shapeRotation="0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowBlendMode="6" shadowDraw="0" shadowOffsetGlobal="1" shadowOpacity="0.7" shadowOffsetUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowUnder="0" shadowColor="0,0,0,255" shadowOffsetDist="1" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" wrapChar="" placeDirectionSymbol="0" reverseDirectionSymbol="0" decimals="3" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" formatNumbers="0" autoWrapLength="0" plussign="0" multilineAlign="3"/>
          <placement xOffset="0" distUnits="MM" centroidWhole="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGenerator="" preserveRotation="1" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" repeatDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" overrunDistance="0" placement="1" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" layerType="PointGeometry" priority="5" yOffset="0" offsetType="0" centroidInside="0" rotationAngle="0" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" placementFlags="10" quadOffset="4"/>
          <rendering displayAll="0" zIndex="0" mergeLines="0" obstacleType="0" scaleVisibility="0" drawLabels="1" upsidedownLabels="0" fontMaxPixelSize="10000" obstacleFactor="1" scaleMin="0" scaleMax="0" obstacle="1" fontMinPixelSize="3" labelPerPart="0" limitNumLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="LabelDistance">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="@distance" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="eval( @label_quadrant )" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="OffsetXY">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="eval( @label_offset )" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="PredefinedPositionOrder">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="case&#xa;when lat_lon = 'lon' and min_max = 'max' then 'T'&#xa;when lat_lon = 'lat' and min_max = 'min' then 'L'&#xa;when lat_lon = 'lat' and min_max = 'max' then 'R'&#xa;when lat_lon = 'lon' and min_max = 'min' then 'B'&#xa;end" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule active="0" description="Degrees" key="{fcde86e4-2cfe-409e-9f8e-a5b2cb815cd6}">
        <settings calloutType="simple">
          <text-style namedStyle="Regular" isExpression="1" textOrientation="horizontal" textOpacity="1" fontUnderline="0" fontWeight="50" multilineHeight="1" fontStrikeout="0" fieldName="eval( @label_Degrees )" fontSizeUnit="Point" fontKerning="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="0,0,0,255" fontCapitals="0" fontItalic="0" blendMode="0" fontWordSpacing="0" fontFamily="Ubuntu" useSubstitutions="0" fontLetterSpacing="0" fontSize="10" previewBkgrdColor="255,255,255,255">
            <text-buffer bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferColor="255,255,255,255" bufferOpacity="1" bufferSize="1" bufferBlendMode="0" bufferJoinStyle="128"/>
            <background shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeX="0" shapeSizeType="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeJoinStyle="64" shapeOffsetX="0" shapeOpacity="1" shapeSVGFile="" shapeRadiiY="0" shapeDraw="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRotationType="0" shapeType="0" shapeRadiiUnit="MM" shapeRotation="0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowBlendMode="6" shadowDraw="0" shadowOffsetGlobal="1" shadowOpacity="0.7" shadowOffsetUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowUnder="0" shadowColor="0,0,0,255" shadowOffsetDist="1" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" wrapChar="" placeDirectionSymbol="0" reverseDirectionSymbol="0" decimals="3" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" formatNumbers="0" autoWrapLength="0" plussign="0" multilineAlign="3"/>
          <placement xOffset="0" distUnits="MM" centroidWhole="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGenerator="" preserveRotation="1" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" repeatDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" overrunDistance="0" placement="1" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" layerType="PointGeometry" priority="5" yOffset="0" offsetType="0" centroidInside="0" rotationAngle="0" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" placementFlags="10" quadOffset="4"/>
          <rendering displayAll="0" zIndex="0" mergeLines="0" obstacleType="0" scaleVisibility="0" drawLabels="1" upsidedownLabels="0" fontMaxPixelSize="10000" obstacleFactor="1" scaleMin="0" scaleMax="0" obstacle="1" fontMinPixelSize="3" labelPerPart="0" limitNumLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="LabelDistance">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="@distance" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="eval( @label_quadrant )" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="OffsetXY">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="eval( @label_offset )" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="PredefinedPositionOrder">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="case&#xa;when lat_lon = 'lon' and min_max = 'max' then 'T'&#xa;when lat_lon = 'lat' and min_max = 'min' then 'L'&#xa;when lat_lon = 'lat' and min_max = 'max' then 'R'&#xa;when lat_lon = 'lon' and min_max = 'min' then 'B'&#xa;end" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule active="0" description="XY" key="{6b508426-2f2c-4a08-92d1-f621d5b51f16}">
        <settings calloutType="simple">
          <text-style namedStyle="Regular" isExpression="1" textOrientation="horizontal" textOpacity="1" fontUnderline="0" fontWeight="50" multilineHeight="1" fontStrikeout="0" fieldName="eval(@label_XY)" fontSizeUnit="Point" fontKerning="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="0,0,0,255" fontCapitals="0" fontItalic="0" blendMode="0" fontWordSpacing="0" fontFamily="Ubuntu" useSubstitutions="0" fontLetterSpacing="0" fontSize="10" previewBkgrdColor="255,255,255,255">
            <text-buffer bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferColor="255,255,255,255" bufferOpacity="1" bufferSize="1" bufferBlendMode="0" bufferJoinStyle="128"/>
            <background shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeX="0" shapeSizeType="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeJoinStyle="64" shapeOffsetX="0" shapeOpacity="1" shapeSVGFile="" shapeRadiiY="0" shapeDraw="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRotationType="0" shapeType="0" shapeRadiiUnit="MM" shapeRotation="0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowBlendMode="6" shadowDraw="0" shadowOffsetGlobal="1" shadowOpacity="0.7" shadowOffsetUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowUnder="0" shadowColor="0,0,0,255" shadowOffsetDist="1" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" wrapChar="" placeDirectionSymbol="0" reverseDirectionSymbol="0" decimals="3" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" formatNumbers="0" autoWrapLength="0" plussign="0" multilineAlign="3"/>
          <placement xOffset="0" distUnits="MM" centroidWhole="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGenerator="" preserveRotation="1" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" repeatDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" overrunDistance="0" placement="1" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" layerType="PointGeometry" priority="5" yOffset="0" offsetType="0" centroidInside="0" rotationAngle="0" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" placementFlags="10" quadOffset="4"/>
          <rendering displayAll="0" zIndex="0" mergeLines="0" obstacleType="0" scaleVisibility="0" drawLabels="1" upsidedownLabels="0" fontMaxPixelSize="10000" obstacleFactor="1" scaleMin="0" scaleMax="0" obstacle="1" fontMinPixelSize="3" labelPerPart="0" limitNumLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="LabelDistance">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="@distance" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="eval( @label_quadrant )" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="OffsetXY">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="eval( @label_offset )" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="PredefinedPositionOrder">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="case&#xa;when lat_lon = 'lon' and min_max = 'max' then 'T'&#xa;when lat_lon = 'lat' and min_max = 'min' then 'L'&#xa;when lat_lon = 'lat' and min_max = 'max' then 'R'&#xa;when lat_lon = 'lon' and min_max = 'min' then 'B'&#xa;end" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <property value="&quot;id&quot;" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames">
      <value>epsg</value>
      <value>label_DMS</value>
      <value>label_Degrees</value>
      <value>label_XY</value>
      <value>label_offset</value>
      <value>label_quadrant</value>
      <value>size</value>
    </property>
    <property key="variableValues">
      <value>31984</value>
      <value>if( "lat_lon" = 'lat', 
CASE WHEN $y&lt;0
THEN (floor ($y*-1) || '° ' || floor((($y*-1) - floor ($y*-1)) * 60) ||'\' ' || substr( (tostring(((($y*-1) - floor ($y*-1)) * 60) - floor((($y*-1) - floor ($y*-1)) * 60)) * 60),1,5) || '" S')
ELSE (floor ($y) || '° ' || floor((($y) - floor ($y)) * 60) ||'\' ' || substr( (tostring(((($y) - floor ($y)) * 60) - floor((($y) - floor ($y)) * 60)) * 60),1,5) || '" N')
END
,
CASE WHEN $X&lt;0
THEN (floor ($x*-1) || '° ' || floor((($x*-1) - floor ($x*-1)) * 60) ||'\' ' || substr( (tostring(((($x*-1) - floor ($x*-1)) * 60) - floor((($x*-1) - floor ($x*-1)) * 60)) * 60),1,5) || '" W')
ELSE (floor ($x) || '° ' || floor((($x) - floor ($x)) * 60) ||'\' ' || substr( (tostring(((($x) - floor ($x)) * 60) - floor((($x) - floor ($x)) * 60)) * 60),1,5) || '" E')
END
)</value>
      <value>if( "lat_lon" = 'lat', 
CASE WHEN $y&lt;0
THEN (floor ($y*-1) || '° ' || ' S')
ELSE (floor ($y) || '° ' || ' N')
END
,
CASE WHEN $X&lt;0
THEN (floor ($x*-1) || '° ' || ' W')
ELSE (floor ($x) || '° ' || ' E')
END
)</value>
      <value>if( "lat_lon" = 'lat', 
format_number(
y(transform( $geometry, layer_property(  @layer , 'crs' ),'EPSG:'||@epsg)),0)

,
format_number(
x(transform( $geometry, layer_property(  @layer , 'crs' ),'EPSG:'||@epsg)),
0)
)</value>
      <value>case
when lat_lon = 'lon' and min_max = 'max' then  array(0,-@size)
when lat_lon = 'lat' and min_max = 'min' then array( -@size,0)
when lat_lon = 'lat' and min_max = 'max' then array( @size,0)
when lat_lon = 'lon' and min_max = 'min' then array( 0,@size)
end</value>
      <value>case
when lat_lon = 'lat' and min_max = 'max' then 5
when lat_lon = 'lat' and min_max = 'min' then 3
when lat_lon = 'lon' and min_max = 'min' then 7
when lat_lon = 'lon' and min_max = 'max' then 1
end</value>
      <value>4</value>
    </property>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory rotationOffset="270" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" scaleDependency="Area" diagramOrientation="Up" scaleBasedVisibility="0" enabled="0" sizeType="MM" backgroundColor="#ffffff" maxScaleDenominator="1e+08" height="15" minimumSize="0" width="15" penAlpha="255" minScaleDenominator="0" labelPlacementMethod="XHeight" penWidth="0" barWidth="5" lineSizeType="MM" sizeScale="3x:0,0,0,0,0,0" penColor="#000000" opacity="1">
      <fontProperties description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings dist="0" obstacle="0" showAll="1" linePlacementFlags="18" zIndex="0" placement="0" priority="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="min_max">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="lat_lon">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="min_max" index="1" name=""/>
    <alias field="lat_lon" index="2" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="min_max" expression=""/>
    <default applyOnUpdate="0" field="lat_lon" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="min_max" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="lat_lon" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="min_max" exp="" desc=""/>
    <constraint field="lat_lon" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" type="field" name="id" hidden="0"/>
      <column width="-1" type="field" name="min_max" hidden="0"/>
      <column width="-1" type="field" name="lat_lon" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="id"/>
    <field editable="1" name="lat_lon"/>
    <field editable="1" name="min_max"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="lat_lon"/>
    <field labelOnTop="0" name="min_max"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>"id"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
