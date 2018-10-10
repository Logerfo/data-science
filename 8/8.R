library(readxl)
data <- read_excel('exercicio8.xls')
data <- stack(data)
data$ind <- NULL
min <- min(data)
max <- max(data)
seq <- seq(1.55, 1.9, by=0.05)
d.cut <- cut(data$values, seq)
d.freq <- table(d.cut)
cbind(d.freq)
jpeg("ex8.jpg")
hist(data$values, 
     main="Histograma de Altura", 
     xlab="Altura",
     ylab="Frequência",
     border="blue", 
     col="green")
dev.off()
