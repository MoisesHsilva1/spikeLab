# SpikeLab

O **SpikeLab** é um laboratório pessoal de conhecimento dedicado ao registro de estudos, experimentos, spikes técnicos e aprendizados relacionados ao desenvolvimento de software.


## Acesse o projeto

 **Website:** https://moiseshsilva1.github.io/spikeLab/

---

## Pré-requisitos

Antes de começar, certifique-se de possuir as seguintes ferramentas instaladas:

* **Git** para clonagem do repositório e gerenciamento dos submódulos.
* **Hugo Extended** (`v0.140.0` ou superior).

> A versão **Extended** do Hugo é obrigatória, pois o tema utiliza processamento de assets e compilação de estilos durante o build.

---

## Instalação

O projeto utiliza submódulos para gerenciamento do tema utilizado pelo Hugo.

Clone o repositório utilizando:

```bash
git clone --recurse-submodules https://github.com/moiseshsilva1/spikeLab.git
cd spikeLab
```

---

## Instalação rápida

Na raiz do projeto execute:

```bash
chmod +x install.sh
./install.sh
```

O script realiza automaticamente:

* validação da instalação do Hugo;
* atualização dos submódulos do projeto;
* geração dos arquivos estáticos do site.

---

## Executando localmente

Para iniciar o ambiente de desenvolvimento:

```bash
./install.sh serve
```

O site estará disponível em:

```text
http://localhost:1313
```

---

## Estrutura do projeto

```text
.
├── content/            # Conteúdo em Markdown
├── themes/PaperMod/    # Tema Hugo utilizado pelo projeto
├── hugo.yaml           # Configuração principal do site
├── install.sh          # Script de instalação e execução
└── public/             # Arquivos estáticos gerados pelo build
```

---

## Build manual

Caso prefira executar o processo manualmente:

```bash
hugo
```

Os arquivos gerados serão disponibilizados na pasta:

```text
public/
```

---
