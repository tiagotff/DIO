
#Classe
class Bicicleta:
    #Construtor: inicializa os atributos da classe
    #Sempre é executado quando uma nova instância da classe é criada
    def __init__(self, cor, modelo, ano, valor):       #self é uma referência EXPLÍCITA para o objeto
       self.cor = cor                                  #representa a instância do objeto
       self.modelo = modelo 
       self.ano = ano                                  #self.alguma coisa são os atibutos da classe
       self.valor = valor 
             
       
    #Definindo os métodos('comportamentos'). Métodos são funções dentro de uma classe.
    #Método buzinar
    def buzinar(self):         #self é um argumento passado por convenção
        print("Plim plim...")
     
    #Método parar
    def parar(self):
        print("Parando bicicleta...")
        print("Bicicleta parada!")
    
    #Método correr
    def correr(self):
        print("Vrummmmm...")
        
    #Método get_cor
    def get_cor(self):
        return self.cor
    
    #Método str
    def __str__(self):
        return f"{self.__class__.__name__}:{', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"

# b1 = Bicicleta("vermelha", "caloi", 2022, 600)
# b1.buzinar()
# b1.parar()
# b1.correr()
# print(b1.cor, b1.modelo, b1.ano, b1.valor)

b2 = Bicicleta("verde", "Monark", 2000, 189)
Bicicleta.buzinar(b2)  #b2.buzinar()
#print(b2.get_cor())                     #em python, isso não é muito comum, pois os atributos são acessíveis publicamente
#print(b2.cor)
print(b2)
      
    
