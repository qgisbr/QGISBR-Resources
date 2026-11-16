# Como Contribuir com o QGISBR-Resources

Agradecemos o seu interesse em compartilhar recursos com a comunidade **QGIS Brasil**! Este repositório segue a estrutura padrão do complemento **QGIS Resource Sharing**, com registro centralizado no arquivo `metadata.ini` da raiz.

Siga as orientações abaixo para garantir que sua coleção seja carregada corretamente no QGIS de outros usuários.

---

## 1. Estrutura de Pastas Obrigatória

Cada coleção deve ficar em uma pasta própria dentro do diretório `collections/`. Utilize nomes curtos, em letras minúsculas e sem espaços ou acentos (use sublinhado `_`).

```text
QGISBR-Resources/
├── metadata.ini                  # Arquivo central de registro das coleções
└── collections/
    └── nome_da_sua_colecao/
        ├── LICENSE.md            # Arquivo de licença (GNU GPL 3)
        ├── preview/              # Imagens de pré-visualização (.png, .jpg)
        ├── models/               # Modelos gráficos do Processamento (.model3)
        ├── processing/           # Scripts Python do Processamento (.py)
        ├── symbol/               # Estilos e símbolos exportados (.xml)
        ├── styles/               # Estilos de camada (.qml)
        ├── svg/                  # Ícones vetoriais personalizados (.svg)
        └── palettes/             # Paletas de cores (.gpl)

```

> **Atenção:** Crie apenas as subpastas referentes aos arquivos que você realmente está enviando (não deixe pastas vazias).

---

## 2. Registro no `metadata.ini` (Raiz)

Abra o arquivo **`metadata.ini`** na raiz do repositório e faça duas alterações:

1. Na seção `[general]`, adicione o nome exato da sua pasta ao final da linha `collections=` (separado por vírgula e sem espaços):
```ini
[general]
collections=split_population,grid_polygon,...,nome_da_sua_colecao

```


2. Adicione um novo bloco ao final do arquivo seguindo o padrão do repositório:
```ini
[nome_da_sua_colecao]
author=Seu Nome
email=seu-email@exemplo.com
name=Nome Legível da Coleção
tags=symbol, style, brasil, palavra-chave1, palavra-chave2
description=Descrição clara e objetiva do que o recurso faz e para quem é indicado.
qgis_minimum_version=3.22
qgis_maximum_version=3.98
license=GNU GPL 3
license_file=LICENSE.md
preview=preview/imagem_exemplo.png

```



### Regras dos campos:

* **`[nome_da_sua_colecao]`**: Deve ser exatamente igual ao nome da pasta criada em `collections/`.
* **`name`**: Nome legível que aparecerá na lista principal dentro do plugin no QGIS.
* **`description`**: Resumo curto e objetivo (1 a 3 frases). Evite quebras de linha no meio do texto.
* **`tags`**: Palavras-chave em português e/ou inglês separadas por vírgula para facilitar a busca interna no plugin.
* **`preview`**: Caminho relativo da(s) imagem(ns) de pré-visualização dentro da pasta da coleção (ex.: `preview/exemplo.png` ou separadas por vírgula se houver mais de uma).

---

## 3. Passo a Passo para Envio (Pull Request)

1. **Faça um Fork** deste repositório para a sua conta no GitHub.
2. **Crie uma branch** para a sua contribuição (ex.: `git checkout -b add-colecao-nome`).
3. **Adicione sua pasta** dentro de `collections/` com os arquivos, a subpasta `preview/` e o `LICENSE.md`.
4. **Registre a coleção** no arquivo `metadata.ini` da raiz conforme a Seção 2.
5. **Teste localmente antes de enviar:**
* No QGIS, abra o **Complementos > Resource Sharing > Resource Sharing > Settings > Add**.
* Aponte a URL para o link do seu *Fork* no GitHub.
* Verifique se os metadados, as imagens de *preview* e a instalação funcionam sem erros.


6. **Atualize o `README.md` principal**, incluindo a nova coleção na tabela de resumo e na seção de pré-visualizações.
7. **Abra um Pull Request** para o repositório `qgisbr/QGISBR-Resources` explicando o que foi adicionado.

---

## Boas Práticas

* **Licenciamento:** Ao contribuir, você concorda que seus arquivos sejam distribuídos sob a licença **GPL-3.0** do repositório. Inclua o arquivo `LICENSE.md` dentro da pasta da sua coleção e, caso esteja adaptando simbologias ou dados de órgãos públicos (ex.: IBGE, Embrapa, CPRM, ANA), cite a fonte oficial na descrição.
* **Nomes de arquivos:** Evite caracteres especiais, acentos e espaços nos nomes dos arquivos `.model3`, `.xml`, `.qml`, `.svg` e imagens de preview.
* **Autocontenção:** Se o seu estilo `.qml` utilizar ícones `.svg` próprios, coloque-os na subpasta `svg/` da mesma coleção para que não fiquem quebrados em outros computadores.

```

```
