library(readxl)
data <- read_excel("exercicio9.xls")
min <- min(data)
max <- max(data)
seq <- seq(4, 24, by=2)
d.cut <- cut(data$Salários, seq, right = TRUE)
d.freq <- table(d.cut)
cbind(d.freq)
hist(data$Salários, breaks = seq,
     main="Histograma de Salário", 
     xlab="Salário",
     ylab="Frequência")
axis(side=1, at=seq(1,24, by=1), labels=seq(1,24, by=1))
axis(side=2, at=seq(1,8, by=1), labels=seq(1,8, by=1))
jpeg("ex9.jpg")
hist(data$Salários, breaks = seq,
     main="Histograma de Salário", 
     xlab="Salário",
     ylab="Frequência")
axis(side=1, at=seq(1,24, by=1), labels=seq(1,24, by=1))
axis(side=2, at=seq(1,8, by=1), labels=seq(1,8, by=1))
dev.off()
