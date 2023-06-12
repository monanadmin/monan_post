# MONAN_POST

Nos notebooks alocados neste diretório, são apresentados exemplos de utilização das bibliotecas `intake`, `zarr` e `xarray` para a criação de catálogos e estruturação de dados n-dimensionais para seu uso na nuvem. O objetivo é compreender as formas atuais para acesso de dados na nuvem e "analysis-ready", i.e., permitir que os usuários do modelo MONAN possam acessar seus dados para a análise sem a necessidade de baixar e tratar os dados para posterior análise.

Apesar dos exemplos apresentados ainda não refletirem o estado atual do MONAN, a intenção é registrar os procedimentos para que os dados possam ser acessados.

## Ambiente Python

Os notebooks podem ser utilizados em máquina local ou por meio do Google Colab (veja os links na tabela abaixo). Para a utilizar os notebooks em máquina local, utilize o gerenciador de pacote do Conda para criar um ambiente com os pacotes necessários:

```
conda env create -f environment.yml
```

**Nota:** Caso a resolução das dependências dos pacotes a serem instalados demore muito tempo, realize os seguintes ajustes no arquivo $HOME/.condarc e tente novamente:

```
channel_priority: flexible
channels:
  - defaults
  - conda-forge
auto_activate_base: true
```

Após a criação do ambiente, ative o ambiente criado e abra a interface do Jupyter:

```
conda activate monan_post
jupyter-lab
```

## Notebooks disponíveis

| Nome                                | Objetivo                                                  | Acesso |
|-------------------------------------|-----------------------------------------------------------|--------|
| `01-convert_dataframe_to_csv.ipynb` | Conversão de arquivos assci do SCANTEC para o formato CSV | <a target="_blank" href="https://colab.research.google.com/github/monanadmin/monan_post/blob/main/notebooks/01-convert_dataframe_to_csv.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>/a> |
| `02-convert_dataset_to_zarr.ipynb`  | Conversão de arquivos binários para o formato Zarr        | <a target="_blank" href="https://colab.research.google.com/github/monanadmin/monan_post/blob/main/notebooks/02-convert_dataset_to_zarr.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>/a> |
| `03-intake_catalog.ipynb`           | Acesso dos dados CSV e Zarr por meio de um catálogo       | <a target="_blank" href="https://colab.research.google.com/github/monanadmin/monan_post/blob/main/notebooks/03-intake_catalog.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>/a> |

**Referência:** [Using Cloud Computing to Analyze Model Outpur Archived in Zarr Format](https://journals.ametsoc.org/view/journals/atot/39/4/JTECH-D-21-0106.1.xml).
