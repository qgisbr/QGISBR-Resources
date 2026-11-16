# Como Contribuir com o QGISBR-Resources

Agradecemos o seu interesse em compartilhar recursos com a comunidade **QGIS Brasil**! Este repositório segue a estrutura padrão do complemento **QGIS Resource Sharing**.

Siga as orientações abaixo para garantir que sua coleção seja carregada corretamente no QGIS de outros usuários.

---

## 1. Estrutura de Pastas Obrigatória

Cada coleção deve ficar em uma pasta própria dentro do diretório `collections/`. Utilize nomes curtos, em letras minúsculas e sem espaços ou acentos (use hífen `-` ou sublinhado `_`).

```text
QGISBR-Resources/
├── metadata.ini                  # Arquivo central de registro das coleções
└── collections/
    └── nome-da-sua-colecao/
        ├── metadata.ini          # (Obrigatório) Metadados exibidos no plugin
        ├── preview.png           # (Recomendado) Imagem de pré-visualização (ex: 600x400 px)
        ├── README.md             # (Opcional) Explicação detalhada de uso e créditos
        ├── models/               # Modelos gráficos do Processamento (.model3)
        ├── processing/           # Scripts Python do Processamento (.py)
        ├── symbol/               # Estilos e símbolos exportados (.xml)
        ├── styles/               # Estilos de camada (.qml)
        ├── svg/                  # Ícones vetoriais personalizados (.svg)
        └── palettes/             # Paletas de cores (.gpl)
