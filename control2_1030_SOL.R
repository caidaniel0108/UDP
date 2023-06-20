# Control 2 ICO9112 Programacion 
# Semestre 2023 - 1
# Horario 10:30 

library(readxl)
library(dplyr)

# PREGUNTA 1

# P1
evaluaciones <- read_excel("control2_202301/Estudiantes_Secc02_Notas.xlsx")

# P2
# Promedio para cada evaluacion
evaluaciones <- evaluaciones %>% mutate(SOL1 = round((N1 + N2 + N3 + N4)/4,2),
                 SOL2 = round((M1 + M2 + M3)/3,2),
                 TA1 = round((T11 + T12)/2,2),
                 TA2 = round((T21 + T22) / 2,2))

# P3
# Obtener Nota Final
# Solemne 1 y 2 35%
solemne <- 0.35
# Tarea 1 y 2 - tarea 15%
tarea <- 0.15
evaluaciones <- evaluaciones %>% mutate(notafinal = round(SOL1*solemne + SOL2*solemne + 
                                            TA1*tarea + TA2*tarea,2)) %>% 
                          select(Estudiante,SOL1,SOL2,TA1,TA2,notafinal)

# P4
# Muestre el nombre de los estudiante y su notafinal  para los estudiantes
# que están bajo el promedio de la nota final.
notamedia <- round(mean(evaluaciones$notafinal),2)

evaluaciones %>% filter(notafinal < notamedia) %>% select(Estudiante,notafinal) 
# Obtengo 13 estudiantes para la sección 2


# P5
# Clasificacion de estudiantes
situacion <- function(nota) {
  if (nota > 4 ) {
    clasi <- "aprobado"
  }
  else if (nota > 1 & nota < 4 ){
    clasi <- "reprobado"
  }
  else {
    clasi <- "inasistente"
  }
  return(clasi)
}

# P6
aprobado <- 0
reprobado <- 0
inasistente <- 0
for (not in evaluaciones$notafinal) {
  if (situacion(not) == "aprobado") {
    aprobado <- aprobado + 1
  }
  else if (situacion(not) == "reprobado") {
    reprobado <- reprobado + 1
  }
  else {
    inasistente <- inasistente + 1
  }
}
paste("Situacion: Aprobados:",aprobado," Reprobados:",reprobado,"Inasistentes:",inasistente)
# Resultado para la sección 2
#[1] "Situacion: Aprobados: 38  Reprobados: 3 Inasistentes: 3"
##################
# PREGUNTA 2

#P1
# Cargar varios Archivos de las secciones
archivos <- list.files("./datoscontrol2")
list.files("./datoscontrol2")
newevaluaciones <- data.frame()
library(readxl)


for (i in archivos) {
  secc <- substr(i[4],17,18) #17 y 18 son el lugar del caracter
  rutanom <- paste0("./datoscontrol2/",i)
  df <- read_excel(rutanom)
  df <- df %>% mutate(seccion = secc)
  newevaluaciones <- rbind(newevaluaciones,df)
}

#P2
# Promedio para cada evaluacion
newevaluaciones <- newevaluaciones %>% mutate(SOL1 = round((N1 + N2 + N3 + N4)/4,2),
                                SOL2 = round((M1 + M2 + M3)/3,2),
                                TA1 = round((T11 + T12)/2,2),
                                TA2 = round((T21 + T22) / 2,2))


# P3
newevaluaciones <- newevaluaciones %>% mutate(notafinal = round(SOL1*solemne + SOL2*solemne + 
                                              TA1*tarea + TA2*tarea,2)) %>% 
                   select(Estudiante,seccion,SOL1,SOL2,TA1,TA2,notafinal)


# P4
# Mostrar las secciones en las cuales el promedio de la nota final es superior a 5
newevaluaciones %>% group_by(seccion) %>% summarise(promedio = mean(notafinal))  %>% 
                    filter(promedio > 5.5)
# Resultados
#1 07          5.52
#2 08          5.59

