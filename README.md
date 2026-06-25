# SpikeLab

SpikeLab é um espaço para registrar ideias, aprendizados e experiências sobre tecnologia, desenvolvimento e arquitetura de software. Aqui compartilho estudos, experimentos e reflexões que surgem ao longo dos projetos e da rotina de aprendizado.

## Requisitos

- Hugo (versão recomendada: 0.163.3 ou superior)

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
- [Dockerfile](Dockerfile) — imagem Docker para o site
- [docker-compose.yml](docker-compose.yml) — ambiente Docker Compose

## Build manual

Se quiser gerar os arquivos estáticos manualmente:

```bash
hugo
```

Os arquivos gerados ficam na pasta [public/](public/).
