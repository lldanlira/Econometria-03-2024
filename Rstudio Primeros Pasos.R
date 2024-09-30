#Cargar una paquetería
install.packages("dslabs")
library(dslabs)
#Definiendo objetos
#Definiendo ecuación x2+x-1=0
a<-1
a
b<-1
c<- -1
b
c
print(a)
#Escribiendo la formula general
(-b + sqrt(b^2 - 4*a*c) ) / ( 2*a )
(-b - sqrt(b^2 - 4*a*c) ) / ( 2*a )
#Funciones
log(8)
#Comando de busqueda de funciones (help ó ?)
help("log")
?log
#Comando args
args(log)

#Ejemplo de log con distintas bases
log(8, base=2)
#Ejemplo de error
log(8 base=2)
#Otras formas de escribir el código anterior
log2(8)
log(8,2)
log(base=2, x=8)
#¡Claro! Aquí tienes un código sencillo de "Hola Mundo" en R:
  
# Este es un script básico de R para imprimir "Hola Mundo"
print("Hola Mundo")

#data
#Sets de datos guardados por default
help("data")
data("CO2")
co2
CO2
data("murders")
murders
#Nombre de las variables
#Deben de cumplir con ciertas caracteristicas (no acentos, no espacios en el objeto)
solucion_1<-(-b + sqrt(b^2 - 4*a*c) ) / ( 2*a )
solucion_2<-(-b - sqrt(b^2 - 4*a*c) ) / ( 2*a )
solucion_1
solucion_2

#Salvar o guardar objetos
help("save")

#Tipo de datos
#Funcion class
help("class")
class(a)
class(pi)
class(solucion_1)
class(murders)

#Funcion str nos da información del data frame
help("str")
str(murders)

#Funcion head nos da el encabezado del data frame
help("head")
head(murders)

#The accessor:$ nos permite aislar columnas de distintos data frame
murders$region
murders$total

#names el nombre de las columnsas
names(murders)
names(CO2)

#Vectors: numerics, characters, and logical
pop <- murders$population
pop
length(pop)
abb <-murders$abb
length(abb)
