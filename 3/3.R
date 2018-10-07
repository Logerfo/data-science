library(readxl)
tabela <- read_excel("exercicio3.xlsx")
dir.create('graficos')

filhs <- tabela$filhos
fams <- tabela$familia

fam_fil <- sort(tabela$filhos_fam, decreasing=F) 

mediana <- median(fam_fil)
mediana

jpeg('graficos/exercicio3_graf1.jpg')
plot(mediana)
dev.off()

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

moda <- getmode(fam_fil)
moda

jpeg('graficos/exercicio3_graf2.jpg')
plot(moda)
dev.off()

