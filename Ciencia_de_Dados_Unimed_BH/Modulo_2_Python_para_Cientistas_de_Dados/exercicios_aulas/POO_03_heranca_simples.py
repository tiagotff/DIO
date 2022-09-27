#Herança simples

class Veiculo:
    #Construtor
    def __init__(self,cor, placa, numero_rodas):
        self.cor=cor 
        self.placa=placa 
        self.numero_rodas=numero_rodas 
    
    #Método ligar_motor
    def ligar_motor(self):
        print('Ligando o motor')
        
        
    def __str__(self):
        return f"{self.__class__.__name__}:{', '.join([f'{chave}={valor}'for chave, valor in self.__dict__.items()])}"
        
#Classe Motocicleta        
class Motocicleta(Veiculo):
    pass
#Classe Carro
class Carro(Veiculo):
    pass
#Classe Caminhao
class Caminhao(Veiculo):
    def __init__(self, carregado, cor, placa, numero_rodas):
        super().__init__(cor, placa,numero_rodas)             #palavra reservada 'super' chama a implementação da classe pai
        self.carregado=carregado
        
    def esta_carregado(self):
        print(f"{'Sim' if self.carregado else 'Não'} estou carregado")


#Instanciando o objeto
moto = Motocicleta("preta", "abc-1234", 2)
# print(moto)
# #Acionando método
# moto.ligar_motor()

#Instanciando o objeto
carro = Carro("branco", "xde-0098", 4)
# print(carro)
# carro.ligar_motor()

#Instanciando o objeto
caminhao = Caminhao("roxo", "gfd-8712", 8, True)
# caminhao.ligar_motor()
# caminhao.esta_carregado()

print(moto)
print(carro)
print(caminhao)
