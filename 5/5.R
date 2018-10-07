library(readxl)
exercicio5 <- read_excel("exercicio5.xls")
X = exercicio5$Marcas
Y = exercicio5$`Nº pessoas`
C = palette(rainbow(length(X)))
jpeg('exercicio5.jpg')
barplot(Y, names.arg = X, xlab = "Marca de antitérmico", ylab = "Pessoas", main = "Exercício 5", col = C)
dev.off()