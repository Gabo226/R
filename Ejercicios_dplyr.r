
dat <- read.csv("msleep_ggplot2.csv") #MOSTRAR EL ARCHIVO
View(dat) #VISUALIZACI�N DE DATOS

class(read.csv("msleep_ggplot2.csv")) #TIPO DE DATO

#FILTRA POR EL TIPO DE ORDEN DE LOS ANIMALES#
animals <- filter(dat,order == "Primates")
View(nrow(animals)) #TE MUESTRA EL N�MERO DE ANIMALES QUE SON PRIMATES

#FILTRA POR ORDEN Y SELECCIONA UN TOTAL, ADEM�S LOS ENLISTA
animals <- filter(dat,order == "Primates")%>%
select(sleep_total) %>% unlist
animals ##SE MUESTRA LA CONSULTA

animals <- filter(dat,order == "Primates")%>%
select(sleep_total) 
class(animals)  #SE MUESTRA EL TIPO DE CLASE
mean(animals) #SE MUESTRA EL PROMEDIO

animals <- filter(dat,order == "Primates")%>%
summarize(unlist(sleep_total))

