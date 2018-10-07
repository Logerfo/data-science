library(readxl)
library(qcc)
exercicio6 <- read_excel("exercicio6.xls")
X = exercicio6$Qualidade
Y = exercicio6$`Nº pessoas`
C = palette(rainbow(length(X)))
names(Y) = X
pareto.chart(Y, ylab = "Nº pessoas", xlab = "Qualidade", ylab2 = "Porcentagem acumulada", main = "Exercício 6", col = C) 