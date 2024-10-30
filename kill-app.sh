#!/bin/bash

##USE PARA MATAR E DELETAR A APLICAÇÃO (IMAGEM E CONTAINER)

echo "Matando aplicação"
docker rm -f app
echo "Completo"

echo "Removendo build"
docker rmi cd_test
echo "Imagem removida"