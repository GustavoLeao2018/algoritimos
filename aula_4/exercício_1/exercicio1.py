#!/usr/bin/env python3
"""Método que verifica qual é par ou impar e retorna isso em uma lista."""
from random import randint


def par_ou_impar(lista):
    """Retorna a lista com True(par) False(ímpar)."""
    lista_final = []
    for item in lista:
        if (item % 2) == 0:
            lista_final.append(True)
        elif (item % 2) != 0:
            lista_final.append(False)
    return lista_final

if __name__ == '__main__':
    lista = [randint(0, 100) for x in range(randint(10, 100))]
    print("="*100)
    print("Lista de números:")
    for item in lista:
        print("Item: {}.".format(item))
    lista_par_impar = par_ou_impar(lista)
    print("="*100)
    print("Lista de Verificação:")
    for i in lista_par_impar:
        print("Item: {}".format(i))
    print("="*100)
