1+1
((20+7)/3)^2

#atribuição: <-
objeto1 <- 3*3
print(objeto1)
objeto1

#para comentários
raio <- 10
espessura <- 1
comprimento <- 70

#calcula volume do cubo
volume <- pi*(raio - espessura)^2*comprimento 
print(volume)

month.name 
month.abb

#Definindo vetor
(primeiro.vetor <- c(1, 3, 5, 9, 10))  #c = concatenar
(segundo.vetor <- c(1, 4, 5, 8, 22))  #c = concatenar
terceiro.vetor <- c(primeiro.vetor, segundo.vetor)
print(terceiro.vetor)
length(terceiro.vetor)

#Matrizes
A <- matrix(c(2, 4, 3, 1, 5, 7), nrow = 2, ncol = 3, byrow = TRUE)
print(A)

B <- matrix(c(2, 5, 3, 4, 5, 12), nrow = 2, ncol = 3, byrow = TRUE)
print(A)

print(A * B)

#calculando a média do vetor
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean <- mean(x)
print(result.mean)

#calculando a mediana do vetor
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result.median <- median(x)
print(result.median)
