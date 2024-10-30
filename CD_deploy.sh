#!/bin/bash

log_erro="CDTestlog.log"
## USE PARA FAZER O BUILD E DEPLOY DA APLICAÇÃO

echo "Build dockerfile..."
docker build -t cd_test . 2>$log_erro

if [ $? -eq 0 ]; then
    echo "Build completa" >$log_erro
    cat $log_erro

    echo "Deploy Container"
    docker run -d --name app -p 8000:8000 cd_test 2>$log_erro

    if [ $? -eq 0 ]; then
        echo "Deploy completo" >$log_erro
        cat $log_erro
    else
        echo "Deploy Falhou!"
        cat $log_erro
        exit 1
    fi

else
    echo "Build falhou!"
    cat $log_erro
    exit 1
fi