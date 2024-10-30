#!/bin/bash

## USE PARA FAZER O BUILD E DEPLOY DA APLICAÇÃO

echo "Build dockerfile..."
docker build -t cd_test .
echo "Build completa"

echo "Deploy Container"
docker run -d --name app -p 8000:8000 cd_test
echo "Deploy completo"