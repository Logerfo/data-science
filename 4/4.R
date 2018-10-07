library(readxl)
tabela <- read_excel("exercicio4.xls")

salarios <- tabela$Salários

jpeg('4.jpg')
hist(salarios,  main = "Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Dados")
dev.off()