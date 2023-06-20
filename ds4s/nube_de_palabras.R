# https://www.microdatos.cl/_files/ugd/a52fe7_6a577d76452249209fcaf115572d3cf3.pdf
# https://r-graph-gallery.com/196-the-wordcloud2-library.html
# https://www.microdatos.cl/tsocial

library(haven)
library(dplyr)
base <- read_dta("/Users/Daniel/Desktop/proyectos/ds4s/BaseFinalTS1.dta")
View(base)

base$p2=as.numeric(base$p2)

base <- base %>% 
  mutate(p2= recode(p2,
                    `1`="Hombre",
                    `2`="Mujer"))

### INTENTO DE NUBE DE PALABRAS ###

# Instalación de paquetes:
install.packages("pdftools") # para cargar archivos de texto en pdf
install.packages("tm") # para minería de texto
install.packages("SnowballC") # para minería de texto
install.packages("wordcloud2") # paquete para generar la nube de palabras

# Carga de paquetes
library("pdftools")
library("tm")
library("SnowballC")
library("wordcloud2")

texto <- base$p5
# Recordamos que en R, la ruta de archivos en Windows usa / en vez de \
# Por ejemplo: D:/
texto <- iconv(texto, "UTF-8")
texto = iconv(texto, to="ASCII//TRANSLIT")

# Utilizando la función Corpus(), indicamos la fuente de nuestro texto
docs <- Corpus(VectorSource(texto))

# Para verificar que el archivo se cargó correctamente, utilizamos la función
# inspect()
inspect(docs)

# Convertir el texto a minúsculas
docs <- tm_map(docs, content_transformer(tolower))
# Quitar los números
docs <- tm_map(docs, removeNumbers)
# Quitar las palabras comunes en español
docs <- tm_map(docs, removeWords, stopwords("spanish"))
# Quitar palabras communes que consideres bajo tu criterio
# especificando un vector de palabras comunes a ser eliminadas
docs <- tm_map(docs, removeWords, c("palabrascomunes1", "palabrascomunes2")) 
# Quitar signos de puntuación
docs <- tm_map(docs, removePunctuation)
# Eliminar espacios en blanco
docs <- tm_map(docs, stripWhitespace)


mtd <- TermDocumentMatrix(docs)
m <- as.matrix(mtd)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)

wordcloud2(data = d, size = 1,
           color=rep_len(c("red","blue","black"), nrow(d)) , ellipticity = 0.5,
           minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1,
           letterCloud(d, "CHILE"))

