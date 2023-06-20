# Librerias ####

library(RSelenium)
library(rvest)
library(tidyverse)

# Codigo ####

#https://chromedriver.chromium.org/downloads



binman::list_versions("chromedriver")



rd = rsDriver(browser = "chrome",
              chromever = "103.0.5060.134",
              verbose = FALSE,
              port = 5572L)



remdr = rd$client

#navegar
remdr$navigate("https://zeusr.sii.cl//AUT2000/InicioAutenticacion/IngresoRutClave.html?https://misiir.sii.cl/cgi_misii/siihome.cgi")

#usuario y contraseña
usuario = "Usuario"
contrasena = "Contraseña"


rut = remdr$findElement(using = "id", "rutcntr")
rut$sendKeysToElement(list(usuario ))

cont = remdr$findElement(using = "id", "clave")
cont$sendKeysToElement(list(contrasena, key = "enter"))


remdr$navigate("https://loa.sii.cl/cgi_IMT/TMBCOC_InformeAnualBheRec.cgi?rut_arrastre=76914578&dv_arrastre=8&cbanoinformeanual=2022")

mes = remdr$findElement(using = "link text", "ENERO")

mes$clickElement()

planilla = remdr$findElement(using = "css selector", 'input[name="planilla"]')

planilla$clickElement()


# Hasta acá lo que hace de manera automatica es descargar las planillas

# IDEA: Se podría crear un loop automático para que ordene todo en un Excel único.

# ¿Es esto lo que se está buscando?







