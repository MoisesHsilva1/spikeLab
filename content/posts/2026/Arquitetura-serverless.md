---
date: '2026-06-26T18:09:39-03:00'
draft: false
title: 'Arquitetura Serverless'
---

A arquitetura serverless apresenta um novo conceito quando pensamos em escalar nosso software com uma infraestrutura que suporte a evolução da nossa aplicação, ainda assim garantindo a alta disponibilidade.

Baseado nisso, o conceito serverless ("sem servidores") não diz exatamente que não utilizamos servidores, e sim que utilizamos as propostas de provisionamento da nuvem para fornecer esse serviço utilizando a infraestrutura como serviço (IaaS) a nosso benefício. Outro ponto que temos que abordar seria a diferença entre computação serverless x arquitetura.

### Evento

Antes de entrarmos a fundo na diferença das duas abordagens, acho importante contextualizar o que seria um evento. Um evento, em uma abordagem centralizada nessa ação, pode divergir muito dependendo da aplicação, mas, em um contexto geral, seria toda aquela ação ou interação do usuário/consumidor da aplicação que gera uma ação de recursos computacionais. Podemos pensar muito no micro, como um clique, uma alteração no banco ou um retorno de endpoint. Em conceitos como arquiteturas Client-Server, tratamos esses eventos como "requisições", mas em outras abordagens os tratamos como eventos para se referenciar à microação que pode ser abordada em uma larga escala.

### Computação Serverless

Na computação serverless, estamos abordando um modelo de desenvolvimento de aplicações pelo qual o provedor de nuvem é responsável por gerenciar a infraestrutura de nuvem e escalar a aplicação, além de ser orientada totalmente a eventos e seguir o modelo de infraestrutura como serviço (IaaS), no qual a cobrança é definida diretamente pelo serviço utilizado; ou seja, quanto mais demanda, mais custo; quanto menos demanda, menos custo.

A computação serverless pode ter diversas categorias diferentes, desde funções serverless até bancos de dados serverless.

### Arquitetura Serverless

Na arquitetura serverless, já estamos conversando sobre o design da aplicação, ou seja, o desenho de como será a implementação naquele app, com um artefato ainda sendo centralizado no evento. Mas, com diferença de cobrança em relação ao exemplo anterior da Computação serverless, onde o provedor de nuvem ficava ativo mesmo sem uso da aplicação, agora, com a arquitetura, quando é disparado um evento, nosso provedor de nuvem deve prover os recursos para garantir que aquele evento ocorra. Outro ponto é a descarga de responsabilidade dos desenvolvedores em se preocuparem com prover servidores e escalabilidade, que se torna papel do nosso provedor de nuvem.

Na minha visão, grandes vantagens de se utilizar serverless seriam o ponto de custo de infraestrutura com aplicações que estão em crescimento — isso pode ser um grande tradeoff para definir o seu sucesso no futuro em como comportar seus usuários — e a aceleração da implementação e do desenvolvimento, devido a reduzir diversas configurações e dores de cabeça com infraestrutura.

Mas pode ter pontos negativos, como trazer complexidade a longo prazo, já que abordagens baseadas em eventos podem se tornar um peso na evolução da aplicação. Cabe analisar todos os possíveis tradeoffs; as escolhas passadas determinam como vai ser seu software no futuro.

Nos próximos posts pretendo me aprofundar em provedores de nuvem que oferecem esses serviços e como podemos usar.