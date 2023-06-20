#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Aug  3 19:31:07 2022

@author: daniel
"""

import random as rd
rd.Random()

from datetime import date as dt
dt.today()

if True:
    print("Esto es verdadero")
else:
    print("Esto es falso")

if 2+2 < 2:
    print("esto es verdadero")
else:
    print("esto es falso")


def esPar(numero):
    if numero%2==0:
        print("Este número es par")
    else:
        print("Este número es impar")

esPar(5)

