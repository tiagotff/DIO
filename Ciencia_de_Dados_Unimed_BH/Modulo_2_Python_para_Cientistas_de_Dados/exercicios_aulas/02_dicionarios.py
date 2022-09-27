pessoa1 = {"nome": "Guilherme", "idade": 28}
pessoa2 = dict(nome="Guilherme", idade=28)

pessoa1["telefone"] = "3333-1234"      #aqui é quando o dicionário já está criado

print(pessoa1)

#acesssar valores
pessoa1["nome"]

#atribuir novo valor
pessoa1["nome"] = "Maria"

#Dicionarios aninhados
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappine@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},    
}
contatos["giovanna@gmail.com"]["telefone"]

#FOR
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappine@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},    
}
contatos["giovanna@gmail.com"]["telefone"]
# for chave in contatos:
#     print(chave, contatos[chave])
    
for chave, valor in contatos.items():       #melhor opção
    print(chave, valor)
    
#Métodos da classe dict

#clear - apaga
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappine@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},    
}
contatos.clear()

#copy - tira uma cópia do dicionário
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappine@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},    
}
copia = contatos.copy()
copia["guilherme@gmail.com"]={"nome": "Gui"}
contatos["guilherme@gmail.com"]
copia["guilherme@gmail.com"]

#fromkeys  - utilizado para criar chaves com ou sem valor
dict.fromkeys(["nome","telefone"])
dict.fromkeys(["nome","telefone"], "vazio")

#get  - para acessar valores no dicionario

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
}
contatos["chave"]                              #KeyError
contatos.get("chave")                          #None
contatos.get("chave", {})                      #{}
contatos.get("guilherme@gmail.com", {})

#items  - retorna uma lista de tuplas. Muito útil para iterar quando utilizado o FOR
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
}
contatos.items()

#keys   - util para saber as chaves do dicionario
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
}
contatos.keys()

#pop   - remove um valor do dicionario
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
}
contatos.pop("guilherme@gmail.com")
contatos.pop("guilherme@gmail.com", {})

#popitem   - remove um valor do dicionario // parecido com o pop, mas aqui não se informa qual a chave. Ele vai retirando os itens na sequência
contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
}
contatos.popitem()
contatos.popitem()      #KeyError

#setdefault - Se a chave já existir não altera o valor, se não existir insere o valor

contato = {"nome": "Guilherme", "telefone": "3333-2221"}

contato.setdefault("nome", "Giovanna")
print(contato)

contato.setdefault("idade", 28)
print(contato)


#update   - atualiza o dicionario com o dicionario passado como parametro, caso ainda não esteja no dicionario acessado

contato = {"nome": "Guilherme", "telefone": "3333-2221"}

contato.update({"guilherme@gmail.com": {"nome": "Gui"}})
print(contato)

contato.update({"guilherme@gmail.com": {"nome": "Giovanna", "telefone": "3322-8181"}})
print(contato)

#values - retona os valores do dicionario

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappine@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},    
}
contatos.values()

#in   - forma mais elegante para rificar se uma chave existe ou não no dicionario

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappine@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},    
}

resultado = "guilherme@gmail.com" in contatos
print(resultado)

resultado = "idade" in contatos["guilherme@gmail.com"]
print(resultado)

#del    - para exclusão

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme",  "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappine@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},    
}
del contatos["guilherme@gmail.com"]["telefone"]
del contatos["chuvachuva@gmail.com"]
del contatos["chappine@gmail.com"]["telefone"]

contatos

