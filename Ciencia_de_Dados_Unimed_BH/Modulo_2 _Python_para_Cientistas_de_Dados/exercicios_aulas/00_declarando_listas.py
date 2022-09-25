frutas = ["Laranaja", "maca", "uva"]
print(frutas)

frutas = []
print(frutas)

letras = list("python")
print(letras)

numeros = list(range(10))
print(numeros)

carro = ["Ferrari", "F8", 4200000, 2020, 2900, "São Paulo", True]
print(carro)

frutas = ["Laranaja", "maca", "uva"]
print(frutas[0])
print(frutas[-1])
print(frutas[-3])

matriz = [
    [1,"a",2],
    ["b",3,4],
    [6,5,"c"]
]

print(matriz[0])
print(matriz[0][0])
print(matriz[0][-1])
print(matriz[-1][-1])

# Fatiamento
lista = ["p","y","t","h","o","n"]

print(lista[2:])      #["t", "h", "o", "n"]
print(lista[:2])      #["p", "y"]
print(lista[1:3])     #["y", "t"]
print(lista[0:3:2])   #["p", "t"]
print(lista[::])      #["p", "y", "t", "h", "o", "n"]
print(lista[::-1])      #["p", "y", "t", "h", "o", "n"]

#Iterar lista com FOR
carros = ["gol", "celta", "palio"]

for carro in carros:
    print(carro)
    
#Função ENUMERATE - para saber o índice que estamos percorrendo dentro do nosso iterável

for indice, carro in enumerate(carros):
    print(f"{indice}: {carro}")

#Compressão de listas - para criar uma lista de outra lista já existente
numeros = [1, 30, 21, 2, 9, 65, 34]
pares = []

for numero in numeros:
    if numero % 2 == 0:
        pares.append(numero)
print(pares)

#Modificando valores
numeros = [1, 30, 21, 2, 9, 65, 34]
quadrado = []

for numero in numeros:
    quadrado.append(numero ** 2)
print(quadrado)


#Métodos da classe list
lista.append('...')   #adiciona objetos a lista
lista.clear('...')    #limpa a lista
lista.copy('...')     #cópia da lista, numa instancia diferente. Alterações aqui não refletem na lista original e vice-versa.
lista.count('...')    #retorna o nº de ocorrências de vezes que o objeto consultado aparece na lista
lista.extend('...')   #adicona valores áo fim da lista informada, mesmo que haja um valor existente nela
lista.index('...')    #para saber o índice da PRIMEIRA ocorrência do valor passado como parametro

#conceito de pilha
lista.pop()          #por padrão, retira o último elemento inserido na lista // passamos o indice desejado como parametro
lista.remove()       #passamos o objeto desejado como parametro, não o índice
lista.reverse()      #inverte a ordem dos elementos da lista. O último passa a ser o primeiro, o penultimo o segundo ....
lista.sort()         #ordena a lista alfabeticamente
lista.sort(reverse=True)         #ordena a lista alfabeticamente, depois deixa ela ao contrário
lista.sort(key=lambda x: len(x)) #ordena pelo tamanho dos objetos, em ordem crescente
lista.sort(key=lambda x: len(x), reverse=True) #ordena pelo tamanho dos objetos, em ordem crescente, depois inverete a lista

#Funções built-in
len(lista)                                          #para verificar o tamanho da lista
sorted(lista, key=lambda x: len(x))                 #ordena a lista alfabeticamente  
sorted(lista, key=lambda x: len(x), reverse=True)   #ordena a lista alfabeticamente, depois deixa ela ao contrário

