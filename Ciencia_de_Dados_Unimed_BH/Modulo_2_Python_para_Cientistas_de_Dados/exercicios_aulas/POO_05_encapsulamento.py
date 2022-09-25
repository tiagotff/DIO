from tkinter.filedialog import SaveFileDialog


class Conta:
    def __init__(self, nro_agencia, saldo=0):
        self._saldo=saldo                          #Veja que o atributo PRIVADO é precedido por un unerline '_'
        self.nro_agencia=nro_agencia
        
    def depositar(self, valor):
        # ...
        self._saldo += valor
    
    def sacar(self, valor):
        # ...
        self._saldo -= valor
        
    def mostrar_saldo(self):
        return self._saldo
    
conta = Conta("00001", 100)
#conta._saldo += 100                               #não acessar o atributo com encapsulamento privado. Não se deve quebrar o encapsulamento.
conta.depositar(100)
print(conta._saldo)
print(conta.nro_agencia)
print(conta.mostrar_saldo())