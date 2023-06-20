#########################
# Manejo de cadena de caracteres (String)
cadena <- "ASTUDILLO ROJAS, CRISTOBAL PEDRO"

# Reemplazar caracteres
sub("A","a",cadena)
gsub("A","a",cadena)

# Largo de una cadena
nchar(cadena)

# Extraer una sub cadena de caracteres de otra cadena
substr(cadena,1,9)


# Separar en palabras
# Identificar que retorna la funcion strsplit
strsplit(cadena," ")


# Ejercicios
# Extraer el primer apellido
# Extraer el segundo nombre
# Obtener los nombres en una sola cadena de caracteres
# Obtener los apellidos en una sola cadena de caracteres
# Pruebe su solución también con la cadena 2

cadena2 <- "JEREZ FUENZALIDA, JOSE LUIS HUMBERTO"



######

# Trabajaremos con 3 archivos excel que tienen datos de personas
# de 3 zonas. Cada archivo tiene datos de una zona (norte, centro, sur)


# importar datos

# Cargamos el paquete readxl para leer los archivos excel.
library(readxl)

# Descargue los archivos en una carpeta que se llame datos.
# Esta carpeta debe estar en su directorio de trabajo.

# Utilice la función list.files() para generar un vector con los 
# nombres de los archivos.

list.files("./datos")


# Asignamos a un vector estos nombres de archivos.
archivos <- list.files("./datos")


# Generamos un data frame vacío que iremos completando a medida que 
# se ejecute el ciclo. Lo llamaremos "datos".
datos <- data.frame()


# Generamos el ciclo para importar todos los archivos en nuestro 
# data frame "datos" y utilizaremos rbind 




# OPCIONAL
# Eliminar los datos "auxiliares" para dejar en el Enviroment
# sólo el dataframe datos



# Agregue una columna al dataframe resultante que contenga de que zona
# son los datos de las personas


# ¿Donde encontramos el nombre de la zona?


# Obtener la lista de los archivos a cargar
# ciclo para recuperar el contenido de cada archivo excel
# e identificar la zona de donde provienen los datos e
# incorporarlo en el dataframe resultante



