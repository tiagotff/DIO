
#iterável também
#set não garante a ordem
#não suporta indexação. Para acessar os valores precisa converter para uma lista
#é um conjunto de valores não repetidos

from ast import For


numeros = set([55,99,3,4,3,5])                         # 2ª forma, com chaves -> variavel = {1,2,3,4,3,5}
print(numeros)

letras = set("abacaxi")                             # 2ª forma, com chaves  -> variavel = {"b","a","c","x","i"}
print(letras)

carros = set(("palio", "gol", "celta", "palio"))    # 2ª forma, com chaves  -> {variavel = "gol", "celta", "palio"}
print(carros)

linguagens = {"python", "java", "python"}
print(linguagens)

#Convertendo em lista para acessar os valores
numeros = {55,99,3,4,3,5}  
numeros = list(numeros)
print(numeros[0])

#For

carros = {"palio", "gol", "celta", "palio"}

for carro in carros:
    print(carro)
    
#ENUMERATE
carros = {"palio", "gol", "celta", "palio"}

for indice, carro in enumerate(carros):
    print(f"{indice}:{carro}")
    
#Métodos da classe set
#union
conjunto_a = {1, 2}
conjunto_b = {3, 4}

conjunto_a.union(conjunto_b)        #{1,2,3,4}
print(conjunto_a.union(conjunto_b))

#intersection
conjunto_a = {1, 2, 3}
conjunto_b = {2, 3, 5}                                #{2, 3}
conjunto_a.intersection(conjunto_b)        
print(conjunto_a.intersection(conjunto_b))

#difference
conjunto_a = {1, 2, 3}
conjunto_b = {2, 3, 5}                                 #{1}
conjunto_a.difference(conjunto_b)        
print(conjunto_a.difference(conjunto_b))

#symmetric_difference - elementos que não estão na intersecção
conjunto_a = {1, 2, 3}
conjunto_b = {2, 3, 5}                                 #{1, 5}
conjunto_a.symmetric_difference(conjunto_b)        
print(conjunto_a.symmetric_difference(conjunto_b))

#issubset
conjunto_a = {1, 2, 3}
conjunto_b = {4,1,2,5,6,3}
conjunto_a.issubset(conjunto_b)                        #True / False
print(conjunto_a.issubset(conjunto_b))
print(conjunto_b.issubset(conjunto_a))

#issuperset
conjunto_a = {1, 2, 3}
conjunto_b = {4,1,2,5,6,3}
conjunto_a.issubset(conjunto_b)                        #True / False
print(conjunto_a.issuperset(conjunto_b))
print(conjunto_b.issuperset(conjunto_a))

#isdisjoint
conjunto_a = {1, 2, 3,4,5}
conjunto_b = {6,7,8,9}
conjunto_c = {1,0}

conjunto_a.isdisjoint(conjunto_b)    
conjunto_a.isdisjoint(conjunto_c)                  #True / False
print(conjunto_a.isdisjoint(conjunto_b))
print(conjunto_b.isdisjoint(conjunto_c))

#add - passo um elemento e, se ele não existir, então, é adicionado
sorteio = {1,23}

sorteio.add(25)
print(sorteio.add(25))
sorteio.add(42)
print(sorteio.add(42))
sorteio.add(25)
print(sorteio.add(25))

print(sorteio)

#clear - limpa o set
sorteio = {1,23}
sorteio.clear()
print(sorteio)

#copy
sorteio = {1,23}
sorteio.copy()
print(sorteio)

#discard - descarta o valor passado como parametro se ele existir, se não existir, não avisa
numeros = {1,2,3,4,5,6,7,8,9,0,1,1}
numeros.discard(1)
numeros.discard(45)
print(numeros)

#pop - neste caso, retira o primeiro valor, caso não indicado o parametro
numeros = {1,2,3,4,5,6,7,8,9,0,1,1}
numeros.pop()
numeros.pop()
print(numeros)

#remove - se o elento existe ele remove, se não existe, dá erro.
numeros = {1,2,3,4,5,6,7,8,9,0,1,1}
numeros.remove(0)
numeros.remove(1)
print(numeros)

#len - não considera elementos duplicados
numeros = {1,2,3,4,5,6,7,8,9,0,1,1}
print(len(numeros))

#in
numeros = {1,2,3,4,5,6,7,8,9,0,1,1}
print(1 in numeros)
print(10 in numeros)
