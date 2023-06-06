#!/bin/bash

docker stop certbot nginx node-app mysql

docker rm certbot nginx node-app mysql

docker network rm mynetwork
