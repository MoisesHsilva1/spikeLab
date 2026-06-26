# SpikeLab

O **SpikeLab** é um espaço dedicado ao registro de ideias, aprendizados e experimentos práticos sobre tecnologia, desenvolvimento e arquitetura de software. O projeto funciona como um laboratório de conhecimento, documentando soluções e reflexões baseadas em cenários reais de engenharia.

**Acesse o site:** [moiseshsilva1.github.io/spikeLab/](https://moiseshsilva1.github.io/spikeLab/)

---

## Requisitos

Antes de iniciar, certifique-se de ter instalado em sua máquina:
* **Git** (para clonagem e gerenciamento de submódulos)
* **Hugo Extended** (versão recomendada: `0.140.0` ou superior)
  * *Nota:* A versão *Extended* é estritamente necessária para a compilação de assets e estilos do tema.

---

## Instalação e Configuração

### 1. Clonar o Repositório
O projeto utiliza submódulos para gerenciar o tema. Certifique-se de clonar o repositório utilizando a flag `--recurse-submodules`:

```bash
git clone --recurse-submodules [https://github.com/moiseshsilva1/spikeLab.git](https://github.com/moiseshsilva1/spikeLab.git)
cd spikeLab

```

## Instalação rápida

Na raiz do projeto, execute:

```bash
chmod +x install.sh
./install.sh
```

Esse script:

- verifica se o Hugo está instalado
- atualiza os submodulos do tema
- gera o site estático

## Rodar localmente

Para subir o site em modo de desenvolvimento:

```bash
./install.sh serve
```

O site ficará disponível em:

```text
http://localhost:1313
```

## Estrutura principal

- [hugo.yaml](hugo.yaml) — configuração do site
- [content/](content/) — conteúdos em Markdown
- [themes/PaperMod](themes/PaperMod) — tema Hugo
- [install.sh](install.sh) — script de instalação rápida

## Build manual

Se quiser gerar os arquivos estáticos manualmente:

```bash
hugo
```

Os arquivos gerados ficam na pasta [public/](public/).
