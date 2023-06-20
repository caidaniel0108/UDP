#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Aug  7 21:22:30 2022

@author: daniel
"""

import random as rd

def maquina():
    jugada = rd.randrange(0,3)
    if jugada == 0:
        return "piedra"
    if jugada == 1:
        return "papel"
    if jugada == 2:
        return "tijera"
    


def match(jugada):
    python = maquina()
    
    print("Python jugó " + python)
    
    if jugada == python:
        return 0
    if jugada =="piedra" and python=="papel":
        return -1
    if jugada =="piedra" and python=="tijera":
        return 1
    if jugada =="papel" and python == "piedra":
        return 1
    if jugada =="papel" and python == "tijera":
        return -1
    if jugada == "tijera" and python =="papel":
        return 1
    if jugada =="tijera" and python =="piedra":
        return -1
    
    


resultados = list()
rondas = 3

for i in range(0, rondas):
    jugador = input()
    
    resultado = match(jugador)
    
    resultados.append(resultado)


def cachipun(rondas = 1):
    
    resultados = list()
    
    for i in range(0, rondas):
        print("ronda : # " + str(i+1))
        print("ingrese su juego [piedra, papel o tijera]")
        jugador = input()
        resultado = match(jugador)
        resultados.append(resultado)
        print("==============================")
        
    print("RESULTADO: ") 
    if sum(resultados) == 0:
        print("Empate")
    if sum(resultados) > 0:
        print("Ganaste")
    if sum(resultados) < 0:
        print("Perdiste")

