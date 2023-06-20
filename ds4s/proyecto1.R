library(readr)
directorio <- read_delim("Downloads/Directorio-oficial-EE-2021/Directorio_Oficial_EE_2021.csv", 
                                         delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(directorio)

library(dplyr)
directorio <- directorio %>% 
  filter(NOM_REG_RBD_A=="RM")
MEDIA <- directorio %>%
  filter(ENS_01==310 | ENS_01==360 | ENS_01==361 | ENS_01==363 |
           ENS_02==310 | ENS_02==360 | ENS_02==361 | ENS_02==363 |
           ENS_03==310 | ENS_03==360 | ENS_03==361 | ENS_03==363 |
           ENS_04==310 | ENS_04==360 | ENS_04==361 | ENS_04==363 |
           ENS_05==310 | ENS_05==360 | ENS_05==361 | ENS_05==363 |
           ENS_06==310 | ENS_06==360 | ENS_06==361 | ENS_06==363 |
           ENS_07==310 | ENS_07==360 | ENS_07==361 | ENS_07==363)

MEDIA <- MEDIA %>% 
  select(-c(AGNO,MRUN,RUT_SOSTENEDOR,P_JURIDICA,COD_REG_RBD, COD_PRO_RBD, COD_COM_RBD))

MEDIA <- MEDIA %>% 
  select(1,3,5,7,9,10,13,16:19,29,30)

MEDIA <- MEDIA %>% 
  select(RBD,NOM_RBD,NOM_COM_RBD,PAGO_MATRICULA,PAGO_MENSUAL)



  
  