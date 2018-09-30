#!/usr/bin/env bash

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


echo
echo "Colocando as configurações de usuário e email"
git config --global user.name "GustavoLeao2018"
git config --global user.email "gustavo.leao.nogueira.2018@gmail.com"
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


echo "Adicionando repositório extra:"
git remote add origin https://github.com/GustavoLeao2018/aulas-estudo.git
echo


echo "Enviando para o repositório"
git push -u origin master
echo

echo "Adicionado em um outro repositório, (simulando no repositório)"
echo "Voltando para a pasta anterior"
cd ..
echo

echo "Criando uma outra pasta"
mkdir exercicio_1_outro_repositorio
echo

echo "Entrando na pasta"
cd exercicio_1_outro_repositorio
echo

echo "Clonando o repositório"
git clone https://github.com/GustavoLeao2018/aulas-estudo.git
echo

echo "Entrando na pasta"
cd aulas-estudo
echo


echo "Criando o README.md"
touch README.md
echo

echo "Arquivo README.md alterado"
git add README.md
echo

echo "README.md commitado"
git commit -m "Arquivo README.md alterado!"
echo

echo "Status mostrado"
git status
echo

echo "Log mostrado"
git log
echo

echo "Adicionando repositório extra:"
git remote add origin https://github.com/GustavoLeao2018/aulas-estudo.git
echo


echo "Enviando para o repositório"
git push -u origin master
echo


echo "Voltando pra anterior"
cd ..
echo

echo "Indo pro outro"
cd exercicio_1
echo

echo "Sincronizando"
git pull

