# Swyno Deploy

Este projeto é o responsável por construir e inicializar a aplicação Swyno dentro de uma maquina virtual.

## Requisitos

- docker
- docker-compose

## Instalação e atualização

Abra um terminal na pasta onde está o arquivo docker-compose.yml e digite:

```
docker-compose down --rmi all && docker-compose build --no-cache && docker-compose up -d
```
Após isso feche o terminal e pode abrir o frontend no endereço:

> http://localhost:8080

E o backend no endereço:

> http://localhost:8081
