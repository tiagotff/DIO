class Pessoa:
    def __init__(self, nome=None, idade=None):
        self.nome=nome
        self.idade=idade
    
    #Método de classe
    @classmethod    #Transforma em método de classe
    def criar_de_data_nascimento(cls, ano, mes, dia, nome):       #convenção não é self, mas sim 'cls'
        idade = 2022 - ano
        return cls(nome, idade)
    
    #Método estático
    @staticmethod   #Transforma em método estático
    def e_maior_idade(idade):
        return idade >= 18
        
# p = Pessoa('Guilherme', 28)
# print(p.nome, p.idade)

p = Pessoa.criar_de_data_nascimento(1994, 3, 21, "Guilherme")
print(p.nome, p.idade)

print(Pessoa.e_maior_idade(18))
print(Pessoa.e_maior_idade(8))