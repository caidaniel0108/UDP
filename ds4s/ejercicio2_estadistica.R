#a. Cargue la base de datos que contiene la siguiente libreria:

install.packages(openintro)

data_2 <- openintro::china


#Descripcion de la data: La Encuesta de Salud y Nutricion de China tiene como objetivo examinar los efectos 
#de las politicas y programas de salud, nutricion y planificacion familiar implementados por los 
#gobiernos nacionales y locales.

#a. Cargue la data china de la libreria openintro y asigne el nombre de data_2. Posteriormente, 
#realice un analisis con las funciones head(), colnames() y rownames(). ?Que puede concluir?.



#b. Encuentre el dato de las siguientes filas y columnas
#fila 300 y columna 3
#fila 200 y columna 1
#fila 100 y columna 2



#c. Obtenga la columna 2 y columna 3 para hombres y mujeres. ?Que puede interpretar? ?Que valores podemos calcular?



#d. Encuentre los estudiantes con un nivel de educacion mayor a 6. ?Cual es la cantidad?



#Al observar que hay muchos NA se hace uso de la funcion na.omit() para quitar estos valores.



#e. Encuentre los estudiantes con un nivel de educacion mayor a 4 y que sean mujeres. ?Cual es la cantidad?



#f. Calcule la media, el maximo y el minimo de las 3 variables