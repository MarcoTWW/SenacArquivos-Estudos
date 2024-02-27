from random import randint
from itertools import repeat

listanumero = [11, 1, 15, 0, 9, 2, 14, 14, 8, 3, 4, 9, 12, 8, 5, 6, 5, 9, 4, 11, 2, 4, 0, 14, 6, 4, 7, 9, 8, 7, 0, 8, 12, 6, 11, 14, 11, 3, 15, 3, 2, 13, 4, 8, 8, 2, 11, 6, 2, 11, 13, 8, 5, 7, 5, 2, 12, 10, 15, 11, 6, 1, 2, 15, 4, 12, 10, 3, 15, 5, 4, 10, 7, 11, 9, 0, 9, 3, 15, 8, 14, 3, 12, 11, 6, 11, 6, 15, 2, 4, 8, 4, 4, 8, 5, 4, 6, 11, 3, 2, 0, 1, 11, 1, 0, 11, 0, 14, 13, 3, 5, 9, 5, 5, 0, 8, 11, 7, 15, 9, 15, 10, 10, 3, 0, 6, 9, 14, 3, 10, 8, 14, 9, 7, 0, 1, 1, 11, 10, 15, 12, 15, 3, 8, 15, 7, 3, 8, 8, 13, 12, 6, 11, 10, 14, 1, 3, 10, 15, 10, 1, 0, 0, 12, 13, 2, 1, 4, 15, 7, 1, 6, 1, 8, 14, 11, 14, 7, 4, 6, 2, 12, 7, 14, 15, 7, 4, 1, 4, 13, 7, 8, 1, 7, 1, 9, 1, 11, 12, 8, 10, 11, 5, 13, 9, 15, 12, 3, 0, 5, 13, 13, 7, 8, 15, 10, 10, 11, 7, 11, 2, 6, 11, 11, 4, 8, 2, 6, 3, 5, 15, 1, 6, 7, 5, 8, 11, 2, 7, 14, 9, 0, 15, 9, 1, 9, 5, 13, 7, 4, 12, 15, 3, 12, 5, 5, 2, 15, 14, 1, 12, 2, 7, 3, 15, 14, 12, 13, 10, 7, 12, 15, 2, 9, 8, 1, 10, 5, 11, 13, 8, 10, 14, 10, 8, 12, 15, 8, 12, 14, 13, 9, 7, 9, 6, 4, 5, 14, 15, 10, 11]

numero = int(input('Número a procurar: '))
numero_a_procurar = listanumero.count(numero)

if numero_a_procurar >= 1:
    print(f'número {numero} encontrado')
    print(f'foram encontrados {numero_a_procurar} números correspomdentes')
else:
    print(f'número {numero} não encontrado')

print(f'A lista tem {len(listanumero)} números')

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

numero_a_procurar = int(input('Número a procurar: '))
inicio = 0
fim = len(listanumero)
contanumero = 0

for x in range(0, fim):
    inicio += 1
    if numero_a_procurar == listanumero[x]:
        contanumero += 1

if contanumero > 0:
    print(f'número {numero_a_procurar} encontrado')
    print(f'foram encontrados {contanumero} números correspomdentes')
else:
    print(f'número {numero_a_procurar} não encontrado')

print(f'A lista tem {len(listanumero)} números')

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

lista2 = []

def listarand(x):
    lista2.append (randint(1, 15))
    if x < 300:
        return listarand(x+1)

listarand(x=0)

print(lista2)