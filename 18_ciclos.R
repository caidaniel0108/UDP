
# ------------- CICLOS (LOOPS, BUCLES) -----------

# Los ciclos son estructuras que ejecutan repetidamente ciertas 
# instrucciones
# Hasta cuándo?... Hasta que se lo digamos o mientras se cumpla
# alguna condición.

# Cuándo es aconsejable usarlos?
# Cuando debo ejecutar muchas veces el mismo código y para evitar 
# estar escribiendo siempre lo mismo se automatiza la ejecución.

# Los ciclos tienen la misma estructura que una función, es decir 
# un paréntesis y unas llaves (y al igual que en el caso de las 
# funciones podemos usar auto-completar para comenzar con 
# una plantilla)



# ------------- CICLO WHILE --------------

# Esta estructura crea un ciclo que se ejecutará mientras se cumpla
# alguna condición.
# El ciclo while debe iniciarse en algún punto por lo que es necesario
# definir el valor de una variable que lo inicie.


variable <- 1
while(variable < 10)
{
  print(paste("La variable en estos momentos es", variable))
  variable <- variable + 1
}

# Agregue lo necesario para completar la siguiente instruccion
while (lista < 4) {
  # Escribir en consola Hola mundo... 4 veces
}

# ------------- CICLO FOR ---------------

# Este es el tipo de ciclo más común en los códigos que 
# verán "allá afuera".

# Todos los for funcionan igual:
#  - definimos una variable para el loop (nombres típicos son i,j,k)
#  - y un vector desde donde la variable va a tomar sus valores
#  - el largo del vector determina cuántas veces ejecutaremos el código
#    dentro del loop
#  - la variable cambia de valor cuando llegamos a la llave } y 
#    comenzamos el loop otra vez

# Por ejemplo, si el vector que define al loop es [1, 2, 3, 4, 5]
# la variable del loop primero tomará el valor 1, luego 2 ... hasta 5
# Pero si el vector es ["maldito", "año", "nuevo", "y", "lo", "que"]
# nuestra variable tomará en la primera vuelta el valor
# "maldito", luego "año" ... hasta el valor "que" en la última vuelta
# del ciclo. En total, ejecutamos 6 veces el código del loop

# si recordamos que 1:10 produce el vector [1 2 3 4 5 6 7 8 9 10]
# podemos escribir un ejemplo muy similar al del ciclo while, para
# que vean la diferencia

for(variable in 1:10){
  print(paste("La variable en estos momentos es",variable))
}



# Podemos recorrer una columna de nuestro dataframe usando la sentencia FOR
# Suponga que su dataframe se llama "datos" entonces

# for(x in datos$nombre_columna)
#     {
#         operaciones_con_x
#     }



# ------------- ACTIVIDAD 1 -------------

# Pongamos en práctica lo anterior:
# Utilizando el mismo dataframe de iris 
# donde una columna se llama petalo.longitud
# ejecute en script el siguiente código:

for( x in iris$Petal.Length) { 
  if(x <1.3){
    print(paste0("Encontramos uno!: ", x))
    }
}

# Cómo podría usar un contador que registre la cantidad de 
# casos menores a 1.3 que vamos encontrando a medida que 
# recorremos iris$Petal.Length?
#
# Además, como podemos ir obteniendo en que fila se encuentran
# los casos menores a 1.3?

# Haga una funcion que reciba un vector numerico
# y devuelva la cantidad de valores menores a 6

# Pruebelo con un vector de ejemplo c(3,5,6,7,8)


# Actividad 2
# Usemos la función list.files() para obtener un vector con 
# los nombres de todos los archivos en cierta carpeta:

list.files("./data")
archivos <- list.files("./data")

# note, que desde el lugar de este script, el archivo
# data_v3 está en ./data/data_v3.xlsx

# Usemos un for loop para ir leyendo cada uno de estos archivos
library(readxl)
for (ar in archivos) {
  nombre_completo <- paste0("./data/", ar)
  este_df <- read_excel(nombre_completo)
}

# Ahora usted, complete el loop para que después de importar un
# archivo, muestre en la consola las tres primeras filas
# y las dos primeras columnas del archivo cargado


