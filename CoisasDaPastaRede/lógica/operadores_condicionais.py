'''

>   maior
<   menor
>=  maior ou igual
<=  menor ou igual
==  igual
!=  diferente

'''

valor_a = int(input('informe um número inteiro: '))
valor_b = int(input('informe outro número inteiro: '))

igual = valor_a == valor_b
maior = valor_a > valor_b
menor = valor_a < valor_b
diferente = valor_a != valor_b

print('valor_a {} é igual ao valor_b {}? {}' .format(valor_a, valor_b, igual,))
print('valor_a {} é maior que valor_b {}? {}' .format(valor_a, valor_b, maior,))
print('valor_a {} é menor que valor_b {}? {}' .format(valor_a, valor_b, menor,))
print('valor_a {} é diferente ao valor_b {}? {}' .format(valor_a, valor_b, diferente,))

#Desvio condicional
if maior:
    print('valor A maior que valor B')

if menor:
    print('valor A menor que valor B')

if igual:
    print('valor A igual ao valor B')

if diferente:
    print('valor A diferente do valor B')

print("Fora do IF")