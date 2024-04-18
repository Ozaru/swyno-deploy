# Swyno Deploy

O Swyno Deploy é o responsável por construir e inicializar a aplicação Swyno dentro de uma maquina virtual.

## Requisitos

Você precisa ter o docker instalado em seu computador, e normalmente o docker-compose vem junto do docker. Você pode encontrar o instalador neste endereço:

> https://www.docker.com/products/docker-desktop

Você pode verificar se o docker e o docker-compose foram instalados corretamente digitando no terminal: 

```
docker -v && docker-compose -v
```

## Instalação, atualização e remoção

Para instalar e atualizar o sistema abra um terminal na pasta swyno-deploy e digite:

```
docker-compose down --rmi all && docker-compose build --no-cache && docker-compose up -d
```

Para desinstalar o sistema abra um terminal na pasta swyno-deploy e digite:

```
docker-compose down --rmi all
```

## Endereços de acesso

Swyno Frontend:

> http://localhost:8080

Swyno Backend:

> http://localhost:8081

## Backup

Perceba que depois de instalar o sistema aparecerá dentro da pasta swyno-deploy uma pasta chamada "volumes", esta pasta armazena todos os dados do sistema. Se essa pasta não existir o sistema irá criá-la, caso exista o sistema irá usá-la.

Você precisa desligar o sistema antes de fazer ou restaurar um backup da pasta "volumes", e depois ligar o sistema novamente.

Para desligar o sistema abra o terminal na pasta swyno-deploy e digite:

```
docker-compose stop
```

Para ligar o sistema abra o terminal na pasta swyno-deploy e digite:

```
docker-compose up -d
```