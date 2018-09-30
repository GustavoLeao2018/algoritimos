#!/usr/bin/env python3
# -*- coding: utf -*-
"""Programa para criar estrelas."""


from pygame import *
from sys import  exit

COR_PRETA = (255, 255, 255)


def criar_estrelas(janela, x, y, raio, largura):
    return draw.circle(janela, COR_PRETA, [x, y], raio, largura)


def tela():
    tamanho = largura, altura = 800, 600

    janela = display.set_mode(tamanho)
    display.set_caption("Criando estrelas")

    x = 50
    y = 50

    FPS = 60

    clock = time.Clock()

    init()
    while True:
        for evento in event.get():
            if evento.type == QUIT:
                exit()
            elif evento.type == KEYDOWN and evento.key == K_ESCAPE:
                exit()
            elif evento.type == KEYDOWN and evento.key == K_RIGHT:
                x += 5
                y += 0
                estrela.move(x, y)
            elif evento.type == KEYDOWN and evento.key == K_LEFT:
                x -= 5
                y -= 0
                estrela.move(x, y)
            elif evento.type == KEYDOWN and evento.key == K_DOWN:
                x += 0
                y += 5
                estrela.move(x, y)
            elif evento.type == KEYDOWN and evento.key == K_UP:
                x -= 0
                y -= 5
                estrela.move(x, y)

        estrela = criar_estrelas(janela, x, y, 5, 5)

        clock.tick(FPS)
        display.update()

    quit()


if __name__ == '__main__':
    tela()