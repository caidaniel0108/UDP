#---------- Introducción: comentarios y ejecución  ------------
# Esto es un comentario porque comienza con #
# R simplemente ignora lo que esté a la izquierda de un #
# 
# Recomendamos escribir suficientes comentarios para que el 
# lector del script tenga información importante
# 
# Un atajo para comentar o descomentar una línea es Ctrl + Shift + C
# Pruebe hacer Ctrl + Shift + C dos veces en esta línea

# La próxima línea no es un comentario y R intentará interpretarla

2 + 3

# A diferencia de la consola, para EJECUTAR una línea debe presionar Ctrl + Enter
# Coloque el cursor en cualquier parte de la línea 12 y presiones Ctrl + Enter

# Si presiona Ctrl + Enter en cualquier comentario de la 1 a la 11, R encontrará
# la primera línea que no sea un comentario y la ejecutará. Pruébelo.

# Ejercicio: escriba un comentario en la próxima línea



#---------- I. Espacios en blanco y continuar en la próxima línea  ------------
# 
# Un espacio en blanco es lo mismo que n espacios en blanco. 
# Uno los usa para hacer el código más legible:
# Todas estas líneas son iguales para R:
2+3
   2 + 3
2     +             3

# También para hacer más legible el código a veces es mejor continuar una línea
# de código hacia abajo en vez de hacia la derecha
# La clave es dejar escribir un operador (como +, +, *, etc.) antes de bajar de línea
# o incluir comenzar un paréntesis y terminarlo en la línea de abajo

# Por ejemplo, esto es válido pero incómodo para leer
2 + 3 + 4 + 52 + 5 + 2 + 4 + 11 + 54 + 31 + 42 + 6 + 4 + 1 + 6 + 3 + 5 + 2 + 4 + 5 + 121 + 323 + 311 + 88

# Noten el + al final de la primera línea
2 + 3 + 4 + 52 + 5 + 2 + 4 + 11 + 54 + 31 + 42 + 
  6 + 4 + 1 + 6 + 3 + 5 + 2 + 4 + 5 + 121 + 323 + 311 + 88

# Aquí la primera línea está terminada y la segunda no es la continuación
2 + 3 + 4 + 52 + 5 + 2 + 4 + 11 + 54 + 31 + 42
  + 6 + 4 + 1 + 6 + 3 + 5 + 2 + 4 + 5 + 121 + 323 + 311 + 88

# Los paréntesis no se ven afectados por el cambio de línea
(2 + 3 + 4 + 52 + 5 + 2 + 4 + 
    11 + 54 + 31 + 42  
    + 6 + 4 + 1 + 6 + 3 + 5 + 2
    + 4 + 5 + 121 + 323 + 311 + 88)



#---------- II. Asignar valor a objetos e "imprimir" su valor  ------------
miprimerobjeto <- 1312

mi_segundo_objeto <- 33

mi_tercer_objeto <- miprimerobjeto + mi_segundo_objeto

miprimerobjeto
mi_segundo_objeto
mi_tercer_objeto

print(mi_segundo_objeto)

#---------- III. Números, caracteres y lógicos  ------------

obj_num1 <- 44
obj_cara1 <- "Si hoy es viernes "
obj_logico1 <- 2 > 5
obj_num2 <- -15
obj_cara2 <- "entonces veo una serie."
obj_logico2 <- obj_num1 == 44

# Ejercicio: cree otro objeto de caracter y otro objeto numérico




