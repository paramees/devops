#!/bin/bash

#Создание сети докер
docker network create mynetwork

# Запуск контейнера MySQL
docker run -d --name mysql \
    -e MYSQL_ROOT_PASSWORD=password \
    -e MYSQL_DATABASE=bookstore \
    -e MYSQL_USER=user \
    -e MYSQL_PASSWORD=password \
    -v $(pwd)/docker-data/sql/mysql-data:/var/lib/mysql \
    --network mynetwork \
    mysql:latest \
    --default-authentication-plugin=mysql_native_password

# Ожидание запуска контейнера MySQL
until docker inspect -f '{{.State.Running}}' mysql 2>/dev/null | grep -q "true"; do
    sleep 1
done

# Запуск контейнера Node.js
docker build -t node-app .
docker run -d --name node-app \
    -p 3000:3000 \
    -v $(pwd)/public:/app/public \
    --network mynetwork \
    node-app

# Ожидание запуска контейнера Node.js
until docker inspect -f '{{.State.Running}}' node-app 2>/dev/null | grep -q "true"; do
    sleep 1
done

# Запуск контейнера Nginx
docker run -d --name nginx \
    -p 80:80 \
    -v $(pwd)/docker-data/nginx:/etc/nginx/conf.d/ \
    --network mynetwork \
    nginx:latest

