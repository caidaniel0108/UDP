# -------INDEXAR EN R-------

# Cargue en un nuevo data frame la base de datos HairEyeColor,
# de la siguiente forma 
# tipo_ojos <- data.frame(HairEyeColor)


 

# Para obtener el valor se una fila y columna en específico, utilice 
# tipo_ojos[fila_nro,columna_nro]
# Por ejemplo tipo_ojos[3,4] nos muestra lo que se encuentre en la 
# fila 3 y columna 4

# Si queremos obtener parte de una columna utilizamos
# tipo_ojos[ a:b, columna_nro ]
# Donde a y b indican la posición de inicio y final de las filas a seleccionar


# Así por ejemplo, si queremos seleccionar desde el quinto al
# décimo elemento de la tercera columna, hacemos
# tipo_ojos[ 5:10, 3]


# Si queremos obtener parte de una fila utilizamos
# tipo_ojos[ fila_nro, a:b]
# Donde a y b indican la posición de inicio y final de las
# columnas a seleccionar.
# Así por ejemplo, si queremos seleccionar desde el primer al 
# tercer elemento de la tercera fila, hacemos
# tipo_ojos[ 3, 1:3]


# Si queremos obtener parte de una fila y columna
# tipo_ojos[ a:b, c:d ]
# Donde a y b indican la posición de inicio y final
# de las  filas y c y d indican la posición inicial y final
# de las columnas a seleccionar



# Así por ejemplo, si queremos seleccionar desde la cuarta 
# a la octava fila y desde la tercera a cuarta columna
# tipo_ojos[ 4:8, 3:4]



# Si queremos obtener una fila entera tipo_ojos[ fila_nro, ]
# Así por ejemplo, si queremos seleccionar la fila 10
# tipo_ojos[ 10, ]


# Si queremos obtener una columna entera tipo_ojos[ ,columna_nro ]
# Así por ejemplo, si queremos seleccionar la columna 4
# tipo_ojos[ ,4 ]


# Otra forma, dado que es un dataframe, para conseguir
# trabajar con una columna podemos llamarla así
# tipo_ojos$nombre_columna
# En el ejemplo anterior, el equivalente es
# tipo_ojos$Freq

# tipo_ojos[,"Freq"]


# -----FILTRAR CON SENTENCIAS LÓGICAS ------

# Usaremos las sentencias lógicas para obtener los datos 
# que queramos de nuestro dataframe.

# Veamos el siguiente ejemplo: Queremos obtener
# el color de ojos de únicamente de los hombres de nuestro dataset
# tipo_ojos[ tipo_ojos[, 3]=="Male", "Eye"]

# Estamos usando la sentencia lógica == para obtener
# las filas de la columna 3 que digan "Male" y 
# luego la indexamos con la columna "Eye"

# Suponga ahora que quiere obtener de las dos primeras columnas,
# aquellos datos donde la frecuencia es mayor a 50. 

# Se tiene: 
  
# tipo_ojos[ tipo_ojos[,4]>50, 1:2]

# Estamos usando la sentencia lógica ">" para seleccionar
# aquellas filas donde la frecuencia sea mayor a 50 y en el 
# campo de columna indicamos que son de la primera a la segunda


# Se tienen los operadores  lógicos AND (&) OR (|)  NOT (!)
# Suponga que quiere el color de cabello de aquellas
# personas que son hombres y además su color de ojos es azul, 
# se tiene entonces

# tipo_ojos[(tipo_ojos[,2]=="Blue") & (tipo_ojos[,3]=="Male"),"Hair"]


# ACTIVIDAD DE CLASE
# Abra el dataset “trees” en un dataframe llamado “arbol”
# 
# Obtenga las alturas de aquellos árboles que tienen volumen mayor a 25.
# 
arbol <- data.frame(trees)
View(arbol)

arbol[arbol[,3]>25,2]
arbol[arbol$Volume>25,"Height"]

# Obtengamos el promedio de las alturas de los árboles que tienen
# volumen mayor a 25, usando la función mean( ) donde entre paréntesis
# coloque el código anterior
mean(arbol[arbol$Volume>25,"Height"])
mean(c(6.5,7,4))

# La función length( ) nos indica cuantos elementos tiene el argumento.
# ¿Cuántos árboles tienen diámetro menor a 13 y volumen mayor a 20?

arbol[(arbol$Girth<13) & (arbol$Volume>20),]
sum((arbol$Girth<13) & (arbol$Volume>20))



