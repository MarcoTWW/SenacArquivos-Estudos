# #Função: Calculadora

# num1 = int(input('Insira o primeiro número: '))
# num2 = int(input('Insira o segundo número: '))
# operacao = int(input('Selecione a operação desejada: \n 1 - soma\n 2 - subtração \n 3 - divisão \n 4 - multiplicação\n'))

# def soma(x, y):
#     return x + y

# def subtracao(x, y):
#     return x - y

# def divisao(x, y):
#     return x / y

# def multiplicacao(x, y):
#     return x * y

# if operacao == 1:
#     print(f'{num1} + {num2} = {soma(num1, num2)}')
# elif operacao == 2:
#     print(f'{num1} - {num2} = {subtracao(num1, num2)}')
# elif operacao == 3:
#     print(f'{num1} / {num2} = {divisao(num1, num2)}')
# elif operacao == 4:
#     print(f'{num1} * {num2} = {multiplicacao(num1, num2)}')
# else:
#     print('Operação inválida')

''''''''''''''''''''''''''''''''''''''''''''''''
#Função: Tabuada

def tabuada(y, x):
    return f'{y} * {x} = { x * y }'

y = int(input('Tabuada do número: '))
for x in range(1,10+1):
    print(tabuada(y, x))


''''''''''''''''''''''''''''''''''''''''''''''''

# #Procedimento: Número aumenta até 300 ¯\_(ツ)_/¯

# def min300():
#     global num1
#     while num1 < 300:
#         num1 += 1
#         if num1 == 300:
#             break

# min300()
# print(num1)