class Passaro:
    def voar(self):
        print("Voando...")
    
class Pardal(Passaro):
    def voar(self):
        print("Pardal pode voar!")

class Avestruz(Passaro):
    def voar(self):
        print("Avestruz não pode voar")
        
# FIXME: exemplo ruim do uso de herança para "ganhar" o método voar      
class Aviao(Passaro):
    def voar(self):
        print("O avião está decolando!")
        
def plano_de_voo(obj):
    obj.voar()
    
plano_de_voo(Pardal())
plano_de_voo(Avestruz())
plano_de_voo(Aviao())

