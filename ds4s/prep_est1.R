library(readxl)
base = read.csv("https://raw.githubusercontent.com/Dfranzani/Bases-de-datos-para-cursos/main/2023-1/UF%2BIVP%2B2022.csv")
str(base)


fechas = matrix(unlist(strsplit(base$Periodo, "[.]")), ncol = 3, byrow = TRUE)
base$Dia = as.numeric(fechas[,1])
base$Mes = fechas[,2]
base$Ano = as.numeric(fechas[,3])
str(base)

cv_uf = sd(base$UF)/mean(base$UF)*100
cv_ivp = sd(base$IVP)/mean(base$IVP)*100
c(cv_uf, cv_ivp)

sd(base$UF)
var(base$UF)


base %>% 
  group_by(Mes) %>% 
  summarise(promedios=mean(UF))




