# atribuição de valor para a variável
num1 = 10
num2 = 20

# isso é um comentário
# o símbolo = (igual) server para atribuição de valores

# realizando cálculos
soma = num1 + num2 # símbolo para SOMA = +

# exibir na tela o resultado da soma
print(soma)

'''
Operadores aritméticos (MATEMÁTICOS)

soma:            +
subtracao:       -
multiplicacao:   *
divisao:         /

'''

subtracao = num1 - num2
multiplicacao = num1 * num2
divisao = num1 / num2
divisaoint = num1 // num2
restdivisao = num1 % num2
exponencial = num1 ** num2

# fazendo uma exibição melhor
print('a soma e?', soma)

print('a subtracao e?', subtracao)

print('a multiplicacao e?', multiplicacao)

print('a divisao e?', divisao)

print('a divisao inteira e?', divisaoint)

print('o resto da divisao e?', restdivisao)

print('a multiplicacao exponencial e?', exponencial)

#interação com o usuário com o comando INPUT

num1 = input('informe o primeiro numero:')
num2 = input('informe o segundo numero:')

#tudo que é recebido pelo INPUT é em formato (tipo) de texto
#neste caso para fazermos cálculos com os números é necessário
#converte-los para números, como a seguir

#PROCESSAMENTO
num1 = int(num1)
num2 = int(num2)

area_do_retangulo = num1 * num2

#SAÍDA
print('A area do retangulo e: {}' .format(area_do_retangulo))