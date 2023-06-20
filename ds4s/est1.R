# Actividad práctica
# Cargue el paquete "gapminder" y las librerías respectivas.
library(gapminder)
# 1. ¿Qué es cada variable y de qué tipo?
?gapminder

# 2. Utilice al menos 3 funciones para explorar la base de datos,
# ¿de qué se trata?
head(gapminder)
glimpse(gapminder)
str(gapminder)
?glimpse
# 3. Calcule la media, la mediana, el mínimo y
# el máximo del PIB per cápita.
mean(gapminder$gdpPercap)
median(gapminder$gdpPercap)
min(gapminder$gdpPercap)
max(gapminder$gdpPercap)

# 4. Filtre los datos para el año 2007.
datos2007 <- gapminder %>% 
  filter(year==2007)

# 5. ¿Qué país es el que tiene mayor PIB per cápita?, ¿y cuál es el que tiene menor PIB pc?
datos2007 %>% 
  select(country, gdpPercap) %>% 
  arrange(desc(gdpPercap)) #NORUEGA

datos2007 %>% 
  select(country, gdpPercap) %>% 
  arrange(gdpPercap) #EL CONGO

# 6. Agregue una variable llamada gdpTotal
# que corresponda al PIB total de cada país
# (población*PIBpc).
datos2007$gdpTotal <- datos2007$gdpPercap*datos2007$pop

datos2007 <- datos2007 %>% 
  mutate(gdpTotal=gdpPercap*pop)

# 7. ¿Cuántos países tienen una expectativa de vida menor a 40 años?
sum(datos2007[,4]<=40)

datos2007 %>% 
  filter(lifeExp<=40)

# 8. ¿Cuál es el continente con mayor población?
datos2007 %>% 
  group_by(continent) %>% 
  summarise(poblacion=sum(pop)) %>% 
  arrange(desc(poblacion))


# 9. Genere un histograma para la expectativa de vida en el año 2007.

# primero la ley de sturges
library(ggplot2)
1+log2(length(datos2007$lifeExp)) # 8.1 ~ 8
ggplot(datos2007)+aes(lifeExp)+
  geom_histogram(bins = 8, col="black", fill="turquoise")+
  labs(x = "Expectativa de vida" , y ="Frecuencia",
       title = "Histograma", subtitle="Expectativa de vida en el año 2007")+
  theme_light()

# 10. Gráfico de caja expectativa de vida según continente

