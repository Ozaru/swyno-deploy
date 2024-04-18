# Swyno Deploy

O Swyno Deploy é o responsável por construir e inicializar a aplicação Swyno dentro de uma maquina virtual.

## Requisitos

Você precisa instalar o docker e o docker-compose em seu computador. Normalmente ao instalar o docker o docker-compose vem junto. Você pode verificar se seu computador possui essas dependências digitando no terminal: 

```
docker -v && docker-compose -v
```

## Instalação

Para instalar e atualizar o sistema abra um terminal na pasta swyno-deploy e digite:

```
docker-compose down --rmi all && docker-compose build --no-cache && docker-compose up -d
```

Para desinstalar o sistema abra um terminal na pasta swyno-deploy e digite:

```
docker-compose down --rmi all
```

## Acessando o sistema

Você pode acessar o sistema nos seguintes endereços:

Swyno Frontend:

> http://localhost:8080

Swyno Backend:

> http://localhost:8081

## Backup

Perceba que dentro da pasta swyno-deploy foi criada uma pasta chamada volumes. Você pode criar ou restaurar um backup dessa pasta após desligar o sistema. 

Para desligar o sistema abra o terminal na pasta swyno-deploy e digite:

```
docker-compose stop
```

Para ligar novamente o sistema abra o terminal na pasta swyno-deploy e digite:

```
docker-compose up -d
```