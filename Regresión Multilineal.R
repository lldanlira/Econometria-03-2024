install.packages("quantmod")
library(quantmod)
install.packages("tseries")
library(tseries)
install.packages("forecast")
library(forecast)
install.packages("TSA")
library(TSA)
install.packages("Quandl")
library(Quandl)

getSymbols("INDPRO",src="FRED")  #Industrial Production Index
getSymbols("UMCSENT",src="FRED") #University of Michigan: Consumer Sentiment
getSymbols("FEDFUNDS",src="FRED") #tasa interes fondos federales
getSymbols("CCRETT01USM661N",src="FRED") #Tipo de cambio efectivo IPC
getSymbols("M2NS",src="FRED")     #Stock de dinero M2
getSymbols("PAYEMS",src="FRED")   # Des trabajadores no rurales
getSymbols("BOPGSTB",src="FRED")  #Balance cuenta, Diferencia entre exp e imp
getSymbols("EXUSUK",src="FRED")   #GBP mensual

indpro= INDPRO["2001-01::2019-12"]
umcsent= UMCSENT["2001-01::2019-12"]
Fedfunds=FEDFUNDS["2001-01::2019-12"]
GBP=EXUSUK["2001-01::2019-12"]
credit=CCRETT01USM661N["2001-01::2019-12"]
pay=PAYEMS["2001-01::2019-12"]
money=M2NS["2001-01::2019-12"]
trade=BOPGSTB["2001-01::2019-12"]

#Creando data frame
variables <- data.frame(merge(indpro,umcsent,Fedfunds,GBP,credit,pay,money,trade))
View(variables)

#Creando modelo de regresión lineal

mod_reg_multi <- lm(EXUSUK ~ UMCSENT+FEDFUNDS+CCRETT01USM661N+PAYEMS+M2NS+BOPGSTB,data=variables )

plot(mod_reg_multi)

summary(mod_reg_multi)

