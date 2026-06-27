---
date: '2026-06-26T18:09:39-03:00'
draft: false
title: 'API gateway & Lambda'
---

Como no post anterior havia comentado um pouco sobre serverless, esta seria uma continuação. Neste post, pretendo abordar os conceitos de gateway e lambda, além de uma abordagem de implementação com a AWS.
## API Gateway

Irei abordar de forma superficial o conceito de gateway. Pretendo, futuramente, abordá-lo a baixo nível e escrever um pouco mais sobre o assunto. Trazendo o conceito de API Gateway, podemos compreendê-lo como "Portas de API". Ele nasce da dor de termos diversas APIs para comunicação, ou seja, antigamente tínhamos que acessar diversos recursos em mais de uma API, o que trazia uma dificuldade de acesso. Assim nasce o API Gateway: ele funciona como um ponto centralizado de entrada, uma fachada que recebe a requisição do cliente e a gerencia, direcionando-a para o microsserviço ou recurso correto por trás dos panos (como um repositório de registros, agendamentos, processadores de pagamento ou serviços de mensageria).

Nessa imagem, temos um diagrama simples de como funciona o API Gateway. Por ele, também podemos configurar algumas políticas de autorização e outras medidas de segurança.

Agora, trazendo para a visão da implementação, existem diversos API Gateways, cada um com seu propósito. Neste tópico, iremos abordar como usá-lo em uma arquitetura serverless focada no ecossistema da AWS. O serviço de API Gateway da AWS, segundo a documentação oficial deles, oferece: "O Amazon API Gateway é um serviço da AWS para criar, publicar, manter, monitorar e proteger as APIs REST, HTTP e WebSocket em qualquer escala." Ou seja, um serviço que pode ser usado em diversas abordagens.
[https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html)

No contexto da AWS, o API Gateway dentro do serverless serve como porta para as Lambdas, ou seja, ele funciona como uma porta que direciona para as Lambdas que retornam os recursos de que precisamos.

## Lambda

Lambdas são uma pequena fração de recursos da nuvem com uma alta disponibilidade, ou seja, elas não se comportam como uma EC2, e sim como um recurso que funciona baseado em uma chamada de uso. Uma dúvida recorrente seria onde as lambdas ficam: elas ficam sempre alocadas em nosso código. Realizamos o cadastro do endpoint da lambda para, a cada chamada naquele endpoint específico, ser alocado o recurso para execução. Na própria documentação da AWS podemos encontrar essa citação sobre seu funcionamento: "O Lambda executa o código com runtimes específicos da linguagem (como Node.js e Python) em ambientes de execução que empacotam o runtime, as camadas e as extensões."

