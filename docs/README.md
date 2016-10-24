# RdLytics

[TOC]

## Sobre o projeto

Esse documento é um feedback sobre o desenvolvimento de um projeto demonstrativo/avaliativo para conforme descrito no documento a seguir: https://docs.google.com/document/d/1Opggdv_ODXz6AAVP0t-kkgp3yIZS_PcLVf6vBg_XWKo/edit

## Preparação

Dado o desafio acima citado, decidi separar o projeto em 4 projetos menores que se complementariam de acordo com as atividades solicitadas, são eles:

- RD-Lytics API: rdlytics
- RD-Lytics JS Library: rdlytics-js
- RD-Lytics DEMO: rdlytics-demo
- RD-Lytics APP: rdlytics-app

A lista acima é segue a ordem em que cada item foi desenvolvido. E são descritos nos item a seguir.

## API REST

## RD-Lytics API

Servindo como base de toda a stack, a API REST foi desenvolvida em cima do fantástico Ruby on Rails, utilizando-se da vantagem de poder servir apenas como API eliminando muito da stack padrão do Rails que seria inútil ou ainda subutilizada.

O desenvolvimento seguiu o básico que a aplicação já fornece, aproveitando do recurso de nested resources para criar dependência entre usuários e suas interações (navegação e contato).

O repositório com a devida documentação pode ser acessado em: https://github.com/estudiogenius/rdlytics e está sendo servido no heroku através do endpoint: http://rdlytics.herokuapp.com/

## RD-Lytics JS Library

Utilizando Browserfy, Watchify, Uglify e Babel-Polyfill através do NPM a parte JS visa atender tanto usuários que desejam incluir a biblioteca em seus projetos ES5 ou 6 quanto os que quiserem incluir diretamente no seu HTML, sendo uma biblioteca super compacta, e com pouquíssima dependência (nenhuma no caso de utilização da dist).

A biblioteca procura instanciar um usuário, utilizando o localstorage para manter um histórico, e a partir dele dispara requisições que registram as interações de navegação e contato.

O repositório com a devida documentação pode ser acessado em: https://github.com/estudiogenius/rdlytics-js

## RD-Lytics DEMO

Como demonstração prática da utilização da biblioteca JS acima descrita, o projeto DEMO trata-se de um simples conjunto de páginas HTML que ao serem navegadas colocam em prática o registro de interações de um usuário qualquer.

O demo foi desenvolvido minimamente com a biblioteca Rack http://rack.github.io/ que não poderia ser mais simples para a necessidade levantada.

O repositório com a devida documentação pode ser acessado em: https://github.com/estudiogenius/rdlytics-demo e está sendo servido no heroku através do endpoint: http://rdlytics-demo.herokuapp.com/


## RD-Lytics APP

Por último e não menos importante (muito pelo contrário) a aplicação aqui referida serve literalmente como frontend para consulta às interações registradas pelos diversos usuários que interagiram com a API.

Também desenvolvido minimamente em cima da biblioteca Rack, a aplicação incluir uma aplicação mínima da versão anterior do Angular (1.5.8) fazendo apenas as devidas consultas na API e as listando para interação com o usuário administrador.

O repositório com a devida documentação pode ser acessado em: https://github.com/estudiogenius/rdlytics-app e está sendo servido no heroku através do endpoint: http://rdlytics-app.herokuapp.com/

## Conclusão

De maneira geral o projeto é simples e não exige uma stack grande, de conhecimento mas me serviu como aprendizado em alguns pontos e certamente será possível avaliar meus sólidos conhecimentos. Confesso que em alguns pontos a documentação, os testes e até mesmo o resultado poderia ser melhor, mas dado ao prazo mínimo, eu preferi fazer com qualidade todos os requisitos solicitados, podendo caso haja a necessidade serem melhorados coisas pontuais com relativa facilidade.