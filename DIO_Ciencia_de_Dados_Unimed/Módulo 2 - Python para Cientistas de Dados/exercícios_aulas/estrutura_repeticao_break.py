while True:
    numero = int(input("Informe um número: "))
    
    if numero == 10:
        break

    if numero % 2 ==0:
        #break     # para a execução quando chega no valor informado
        continue   # pula o valor e continua a execução
    
        
    print(numero)
   
# for numero in range(50):
    
#     if numero == 10:
#         #break     # para a execução quando chega no valor informado
#         continue   # pula o valor e continua a execução
    
#     print(numero, end=" ")