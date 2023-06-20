#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Aug  3 21:49:06 2022

@author: daniel
"""

lista=["arroz", "ajo","sal","aceite"]

# for
for i in lista:
    print (i)

# while
i=0
cantidadElementos = len(lista)

while (i != cantidadElementos):
    print(lista[i])
    i+=1

for i in range(0,3):
    print(lista[i])
    
for i in range(0,len(lista)):
    print("el índice "+ str(i) + " " + "posee el objeto: "+ lista[i])
