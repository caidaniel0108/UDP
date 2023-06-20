# 1. Cargue la base de datos "mtcars" con el nombre de "datos"
datos <- mtcars
?mtcars
# 2. Explore la base con al menos 3 funciones.
print(datos)
head(datos)
glimpse(datos)
colnames(datos)
rownames(datos)
View(datos)
str(datos)
# 3. Encuentre la transmisión del Toyota Corolla.
datos[20,9] # es transmisión manual
# 4. ¿Qué autos tienen 4 cilindros y tienen transmisión automática?
datos[datos[,2] == 4 & datos[,9] == 0, ]
# 5. Cuente cuántos autos pesan entre 2 mil y 5 mil libras.
sum(datos[,6]>=2.000 & datos[,6]<=5.000)



# 6. ¿Cuántos autos tienen 2 carburadores o pesan menos de 2 mil libras? Mencione
#    qué modelos son.
sum(datos[,11]==2 | datos[,6]<=2.000)
datos[datos[,11]==2 | datos[,6]<=2.000,]
# 7. Calcule el promedio de millas por galón
mean(datos$mpg)
# 8. ¿Cuánto pesa el vehículo más liviano?
min(datos$wt)
# 9. ¿Cuál es el vehículo más liviano que tiene transmisión manual?
datos[datos[,6]==min(datos$wt) & datos[,9]==1]
#### NUEVA BASE ####
# Ocuparemos la base de datos "cars93" del dataset "openintro"

library(openintro)
autos <- openintro::cars93