#---------- Introducción: comentarios y ejecución  ------------
# Introducción en clase de ayudantia
#
#---------- IV. Vectores  ------------
# Agregar los objetos que faltan para crear los vectores

vector1 <- c(1, 3, 5, 7)
vector1

vector2 <- c(obj_num1, obj_num2, 5, 7)
vector2

vector3 <- c(obj_cara1, obj_cara2, "Tendré ", "una maratón.")
vector3

vector4 <- c(obj_logico1, obj_logico2, FALSE, FALSE)
vector4

vector5 <- 1:6
vector5

vector6 <- 0:6
vector6

vector6b <- seq(0, 6, by = 0.5)
vector6b


vector7 <- c(obj_cara1, obj_num1)
vector7

vector8 <- c(obj_cara1, FALSE)
vector8

vector9 <- c(obj_num1, FALSE)
vector9

vector10 <- c(obj_num1, TRUE)
vector10

# Ejercicio: use la función c para crear 3 vectores de 5 elementos
# En uno de esos vectores debe usar la notación inicio:final


#---------- IV. data frames ----------------------

# Idealmente las columnas deben ser del mismo largo, o R se encarga de 
# completarlas pero suele no ser ideal

df_1 <- data.frame(col1 = vector1, col2 = vector2, 
                   col3 = vector3, col4 = vector4)
df_1

# Ejercicio, agregue una quinta columna a df_1

# en vez de imprimir df_1 en la consola puede hacer click en Environment



#---------- IV. Importar datos de Excel ---------------

# 1. Suba el archivo de Excel "laboral.xlsx" a este proyecto
# 2. En el panel Environment, selecciones Import Dataset
# 3. Elija "From Excel" y seleccione laboral.xlsx
# 4. Revise que esté OK y acepte
# 5. Ahora es un data frame de R y aparece en Environment.


