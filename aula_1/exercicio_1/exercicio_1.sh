#!/bin/bash

echo "Exercício 1:"
echo "Criando a pasta exercicio_1"
echo

mkdir exercicio_1
cd exercicio_1


echo "Criando o arquivo media.py"
touch media.py
echo

echo "Criando o método de calculo de média:"
echo """def media(numero1, numero2):
    return (numero1 + numero2) / 2

""" >> media.py
echo

echo "Criando o arquivo .gitignore"
echo """/__pycache__/
*.pyc
*.pyo
*.tmp
*.~
*.swp

""" >> .gitignore

echo
echo "Inicializando o repositório"
git init
echo

echo ".gitignore adicionado"
git add .gitignore
echo

echo ".gitignore commitado"
git commit -m "Arquivo git ignore criado!"
echo

echo "Status mostrado"
git status
echo

echo "Arquivo media.py adicionado"
git add media.py
echo

echo "media.py commitado"
git commit -m "Arquivo média criado!"
echo

echo "Status mostrado"
git status
echo

echo "Criando o método de maior número"
echo """def maior_de_tres(numero1, numero2, numero3):
    if numero1 > numero2 and numero1 > numero3:
        return numero1
    elif numero2 > numero1 and numero2 > numero3:
        return  numero2
    else:
        return  numero3

""" >> media.py

echo "Arquivo media.py alterado"
git add media.py
echo

echo "media.py commitado"
git commit -m "Arquivo média alterado!"
echo

echo "Status mostrado"
git status
echo


echo "Log mostrado"
git log
echo



