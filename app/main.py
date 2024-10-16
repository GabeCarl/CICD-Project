from typing import Union

from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"Message": "Teste Mensagem da API"}

@app.get("/health")
def check():
    return {"API": "OK!"}