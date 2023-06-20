#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Aug  2 23:45:50 2022

@author: daniel
"""

class perro:
    ladrar = "¡Guau!"
    aullar = "¡Auuu!"

perro.aullar

variable = perro
variable.aullar

english_dog = perro
english_dog.ladrar = "Woof Woof!"
english_dog.ladrar

perro.ladrar_ingles = "Woof"
perro.ladrar_japones = "Wan"
perro.ladrar_frances = "Wouaff"

perro.ladrar_ingles

class operacion:
    def sumar(x,y):
        return x+y
operacion.sumar(3, 4)

sum([2,2,2])

def buenos_dias():
    print("buenos días")

buenos_dias()


lista = [3,2,9,1]
max(lista)
min(lista)
len(lista)

def esPar(numero):
    return numero%2==0

esPar(4)
esPar(5)

class personas:
    saludar = "hola"
    despedirse = "adios"

personas.saludar



def esImpar(numero):
    return not esPar(numero)

esImpar(5)

def retorno(CantidadInvertida, IngresosAnuales):
    AñosInversion = CantidadInvertida/IngresosAnuales
    return AñosInversion









