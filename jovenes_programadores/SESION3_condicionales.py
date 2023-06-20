#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Aug  3 21:20:04 2022

@author: daniel
"""

def esPar(x, text=False):
    if x%2==0:
        if text:
            print("es par")
        else:
            return True
    else:
        if text:
            print("es impar")
        else:
            return False
# si el evento es igual a evento esperado
#    realizar accion 1
# sino
#    si el evento es igual a otro evento esperado
#       realizar accion 2
#    sino
#       realizar accion 3



def function(x):
    if x%2==0:
        if x%3==0:
            print("hola")
        else:
            print("adios")
    else:
        print("que te vaya bien")

function(13)
            