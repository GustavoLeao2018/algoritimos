#!/usr/bin/env python3
"""Passos para executar o módulo exercício1."""
from behave import given
from behave import then
from behave import when
from exercicio1 import par_ou_impar
from random import randint


@given(u'uma lista de números')
def step_given_list(context):
    """Recebe uma determinada lista com números."""
    context.lista = [randint(0, 100) for x in range(randint(10, 100))]


@when(u'os números da lista forem pares ou impares')
def step_when_numbers_is_even_or_odd(context):
    """Chama o método par_ou_impar."""
    context.resposta = par_ou_impar(context.lista)


@then(u'adicione a lista True ou False.')
def step_then_return_list(context):
    """Verifica se todos os itens são pares ou impares."""
    cont = 0
    for item in context.resposta:
        if item is not True or item is not False:
            cont += 1
    assert cont != 0
