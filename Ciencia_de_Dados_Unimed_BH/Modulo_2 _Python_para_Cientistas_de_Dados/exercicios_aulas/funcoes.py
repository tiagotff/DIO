#Funções
#Paradigma estruturado

def exibir_mensagem():
    print("Olá, mundo!")
    
def exibir_mensagem_2(nome):
    print(f"Seja bem-vindo {nome}!")

def exibir_mensagem_3(nome="Anônimo"):                #argumento deixado como padrão, caso não seja informado
    print(f"Seja bem-vindo {nome}!")
    
    
#exibir_mensagem()
#exibir_mensagem_2(nome="Guilherme")
#exibir_mensagem_2()   #vai dar erro
#exibir_mensagem_3()
exibir_mensagem_3(nome="Chappie")


def calcular_total(numeros):
    return sum(numeros)

def retorna_antecessor_e_sucessor(numero):
    antecessor = numero -1
    sucessor = numero +1
    
    return antecessor, sucessor

calcular_total([10,20,34])
retorna_antecessor_e_sucessor(10)

def func_3():
    print("Olá, mundo!")

print(func_3())


#argumento nomeado -> aquele que se passa chave+valor

def salvar_carro(marca, modelo, ano, placa):
    #salva carro no baco de dados
    print(f"Carro inserido com sucesso! {marca}/{modelo}/{ano}/{placa}")
    
s#salvar_carro("Fiat", "Palio", 1999, "ABC-1234")
#salvar_carro(marca="Fiat", modelo="Palio", ano=1999, placa="ABC-1234")
salvar_carro(**{"marca": "Fiat", "modelo": "Palio", "ano": 1999, "placa": "ABC-1234"})   #** significa: estou passando um dicionario para a função.

#Args e Kwargs
# *args    -> o método recebe os valores como lista
# **kwargs -> o método recebe os valores como dicionário

def exibir_poema(data_extenso, *args, **kwargs):
    texto = "\n".join(args)
    meta_dados = "\n".join([f"{chave.title()}: {valor}" for chave, valor in kwargs.items()])
    mensagem = f"{data_extenso}\n\n{texto}\n\n{meta_dados}"
    print(mensagem)
    
#exibir_poema("Zen of python", "Beautiful is better than ugly.", autor="Tim Peters", ano=1999)

exibir_poema(
    "Sexta-feira, 26 de Agosto de 2022",
    "Zen of Python",
    "Beautiful is better than ugly.",
    "Explicit is better than implicit.",
    "Simple is better than complex.",
    "Complex is better than complicated.",
    "Flat is better than nested.",
    "Sparse is better than dense.",
    "Readability counts.",
    "Special cases aren't special enough to break the rules.",
    "Although practicality beats purity.",
    "Errors should never pass silently.",
    "Unless explicitly silenced.",
    "In the face of ambiguity, refuse the temptation to guess.",
    "There should be one -- and preferably only one -- obvious way to do it.",
    "Although that way may not be obvious at first unless you're Dutch.",
    "Now is better than never.",
    "Although never is often better than *right* now.",
    "If the implementation is hard to explain, it's a bad idea.",
    "If the implementation is easy to explain, it may be a good idea.",
    "Namespaces are one honking great idea -- let's do more of those!",
    autor="Tim Peters",
    ano=1999,
)

#Parametros especiais
#Ex.: def f(pos1, pos2, /, pos_or_kwd, *, kwd1, kwd2):
#            ----------    ----------     ----------
#                |              |               |
#                |              |               |
#                |     positional or keyword    |
#         positional only                   Keyword only

#Positional only
def criar_carro(modelo, ano, placa, /,marca, motor, combustivel):
    print(modelo, ano, placa, marca, motor, combustivel)
    

criar_carro("Palio", 1999, "ABC-1234", marca="Fiat", motor="1.0", 
combustivel="Gasolina")   #instrução valida


criar_carro(modelo="Palio", ano=1999, placa="ABC-1234", marca="Fiat", motor="1.0", 
combustivel="Gasolina")   #instrução invalida


#Keyword only
def criar_carro(*, modelo, ano, placa, marca, motor, combustivel):
    print(modelo, ano, placa, marca, motor, combustivel)

criar_carro(modelo="Palio", ano=1999, placa="ABC-1234", marca="Fiat", motor="1.0", 
combustivel="Gasolina")   #instrução valida

criar_carro("Palio", 1999, "ABC-1234", marca="Fiat", motor="1.0", 
combustivel="Gasolina")   #instrução invalido


#Keyword and positional only
#É possível ariar um pouco esse modelo híbrido

def criar_carro(modelo, ano, placa, /, *, marca, motor, combustivel):
    print(modelo, ano, placa, marca, motor, combustivel)

criar_carro("Palio", 1999, "ABC-1234", marca="Fiat", motor="1.0", 
combustivel="Gasolina")   #instrução valida

criar_carro(modelo="Palio", ano=1999, placa="ABC-1234", marca="Fiat", motor="1.0", 
combustivel="Gasolina")   #instrução invalida


#Funções também são objetos de primeira classe.
#Podemos atribuir funções a variaveis, passá-las como parâmetro para funções
#Usá-las como valores em estruturas de dados(listas, tuplas, dicionarios, etc)

def somar(a, b):
    return a+b

def subtrair(a, b):
    return a-b

def exibir_resultado(a, b, funcao):
    resultado = funcao(a,b)
    print(f"O resultado da operacao é = {resultado}")

exibir_resultado(10,10,somar) # O resultado da operação 10 + 10 = 20
exibir_resultado(10,10,subtrair) # O resultado da operação 10 + 10 = 20


#escopo local e escopo global
#global: utilizar com cuidado...não é considerada boa prática

salario = 2000

def salario_bonus(bonus, lista):
    global salario
    
    lista_aux = lista.copy()
    lista.append(3)
    print(f"lista aux={lista_aux}")
    
    salario += bonus
    return salario


lista = [1]
salario_com_bonus = salario_bonus(500, lista)  #2500
print(salario_com_bonus)
print(lista)
