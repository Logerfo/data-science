library(readxl)
data <- read_excel("exercicio7.xls")
jpeg("ex7.jpg")
barplot(data$Atendimento, legend=c(data$Áreas), main="Graf. Barra - Qtd. atendimentos e área", 
        xlab="Área",col=c("darkblue","red","green", "yellow", "purple"), ylab="Qtd. Atendimento",
        ylim = c(0, 1.4 * max(data$Atendimento, na.rm = T)))
dev.off()