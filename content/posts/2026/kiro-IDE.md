---
date: '2026-06-25T18:09:39-03:00'
draft: false
title: 'Kiro IDE'
---

Muito tem se falado sobre desenvolvimento guiado por IA e, junto com ele, veio o caos do famoso "vibe coding", no qual o desenvolvimento de software se torna apenas diversos prompts e uma luta intensa entre contexto e ação.

O Kiro da AWS traz uma proposta diferente em relação ao desenvolvimento com IA: ele traz a metodologia SDD (Spec Driven Development), onde focamos primeiro em definir as especificações da nossa feature, design e, por último, quais tarefas nossos agentes têm que executar. Sobre SDD pretendo escrever futuramente, mas caso tenha curiosidade, segue o link: [https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html](https://www.google.com/search?q=https%3A%2F%2Fmartinfowler.com%2Farticles%2Fexploring-gen-ai%2Fsdd-3-tools.html).

O workflow do Kiro é baseado na _Requirements_, que podemos chamar de artefato de desenvolvimento. Ela seria basicamente o ponto central para o sistema de desenvolvimento com agentes de IA da IDE, o qual se quebra em 3 etapas de desenvolvimento:


### 1 - Requirements ou Bug analysis

Especificação de software se tornou um grande ponto na era da IA. Gosto de enxergar a especificação de software como as microdecisões dentro do design do nosso produto ou aplicação que podem comprometer a evolução do projeto ou definir como será a possível implementação.

Baseado nisso, quando estamos escrevendo os _Requirements_, precisamos pensar tanto como técnicos quanto como PMs. Pensar como produto significa pensar na experiência daquele usuário quando estamos falando sobre frontend. Quando entramos no debate do backend, devemos pensar nas regras de negócio e em como aquilo deve se comportar para atingir determinado objetivo.

Nosso lado técnico deve entrar com alguns pontos que precisam ser definidos, como, por exemplo: viabilidade técnica, cenários de erro e cenários de sucesso.

Entendendo como técnico, a dificuldade de pensar como produto se torna evidente. Utilize ferramentas como a própria LLM para ajudar nesse processo ou técnicas baseadas no comportamento do usuário, como BDD.

Com isso em mente, focamos em descrever a funcionalidade com todos os critérios necessários para seu funcionamento e todas as user stories necessárias.

No caso de _Bug Analysis_, utilize a mesma linha de pensamento da especificação para resolver bugs.

### 2 - Design

A definição de design dentro do campo de software pode ser entendida como as "interações" entre os componentes do sistema ou, em alguns materiais, como a interpretação da nossa implementação. Ou seja, é nessa etapa que definiremos justamente a implementação real dos _Requirements_, como fluxo de dados, autenticação, requisições e por aí vai.

Nessa etapa, consistimos em definir como será toda a implementação e comunicação da nossa funcionalidade em específico. Perguntas-chave como "o que aquela funcionalidade deve comunicar?" e "como ela deve retornar?" cabem justamente nessa etapa do workflow.

Outro ponto fundamental que podemos incluir é um pedaço da arquitetura ou ela por inteiro, dependendo do nível da funcionalidade, além de diagrama de sequência, cenários de erro e estratégias de teste.

É aqui que nosso lado técnico deve ganhar força ao enxergar comunicação, erros, melhorias de performance e segurança. Nesse contexto, o uso de agentes aponta que nós, como donos da funcionalidade, somos os responsáveis por tomar essas decisões.

No cenário de _Bug Analysis_, ainda devemos seguir essa mesma linha de pensamento, porém aplicada ao fluxo de resolução do bug.

### 3 - Tasks

Nessa etapa, quebramos todas as microtarefas que nosso agente deve realizar. O Kiro dá a opção de realizar todas as tarefas ou apenas as obrigatórias, ou seja, podemos definir tarefas que não devem ser obrigatoriamente feitas. Nessa etapa, é fundamental a conversa com outras etapas, como _Requirements_ e _Design_.

Outro ponto fundamental em que o Kiro traz essa possibilidade seria o tracking das tarefas, ou seja, são definidos IDs para elas para que possamos retornar a uma determinada tarefa para alguma possível alteração.

Nesse ponto, é fundamental a nossa revisão humana para garantir que realmente siga um fluxo de desenvolvimento que faça sentido.

No caso de _Bug Analysis_, seguimos na mesma abordagem, mas focados em tarefas que o agente tem que realizar para resolver o bug.

Esse seria apenas um dos workflows com que podemos trabalhar dentro do Kiro IDE; podemos ter outra alternativa de desenvolvimento com Kiro CLI e por aí vai. A metodologia que apresentei acima o Kiro nomeia como desenvolvimento baseado em _Requirements_. Podemos ter outra abordagem, como desenvolvimento baseado em design, pelo qual definimos primeiro o design da nossa implementação e depois as demais partes. Caso tenha curiosidade ao mais baixo nível, seguem os links da documentação do Kiro:[https://kiro.dev/docs/specs/feature-specs/requirements-first/](https://www.google.com/search?q=https%3A%2F%2Fkiro.dev%2Fdocs%2Fspecs%2Ffeature-specs%2Frequirements-first%2F)[https://kiro.dev/docs/specs/feature-specs/tech-design-first/](https://www.google.com/search?q=https%3A%2F%2Fkiro.dev%2Fdocs%2Fspecs%2Ffeature-specs%2Ftech-design-first%2F)

Uma grande reflexão que trago é que código está se tornando cada dia mais barato. Devemos nos preocupar em como podemos definir e desenhar como serão nossas implementações. Como técnicos, ainda realizamos esse fluxo natural em nossa linha de raciocínio, mas agora devemos seguir no pensamento de _IA-First_: desenhamos e pensamos os fluxos e determinamos para os agentes de IA desenvolverem o código. Isso, aliado a um planejamento bem definido, gera consequentemente uma boa implementação.

O objetivo deste artigo era este: realizar algumas reflexões e apresentar o fluxo de trabalho do Kiro da AWS de forma super lúdica e simples. Pretendo nos próximos artigos trazer uma abordagem mais prática de como desenvolver com o Kiro.
