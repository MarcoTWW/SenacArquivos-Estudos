from random import randint


''''''''''''''''''''''''''''''''''''''''''''''''''''''


def matriz_quadrada(dimensao):
    matriz = []
    for i in range(0, dimensao):
        lista = []
        for j in range(0, dimensao):
            lista.append(0)
        matriz.append(lista)
    return matriz

print(matriz_quadrada(dimensao=int(input('Dimensão da matriz quadrada: '))))


''''''''''''''''''''''''''''''''''''''''''''''''''''''


def matriz_quadrada(n):
    matriz = []
    for i in range(0, n):
        lista = []
        for j in range(0, n):
            lista.append(randint(0,15))
        matriz.append(lista)
    return matriz

def mostra_matriz(matriz):
    resposta = ''
    for i in matriz:
        resposta += f'{i}\n'
    return resposta

matriz_inicializada = matriz_quadrada(n=int(input('Dimensão da matriz quadrada: ')))
print(mostra_matriz(matriz_inicializada))


''''''''''''''''''''''''''''''''''''''''''''''''''''''


def matriz_quadrada(n):
    matriz = []
    for i in range(0, n):
        lista = []
        for j in range(0, n):
            lista.append(0)
        matriz.append(lista)
    return matriz

def mostrar_dimensao(d):
    dimensao_raiz = len(d)
    return f'A dimensão da matriz é de {dimensao_raiz} por {dimensao_raiz}'

print(mostrar_dimensao(matriz_quadrada(5)))


''''''''''''''''''''''''''''''''''''''''''''''''''''''


def matriz_quadrada(n):
    matriz = []
    for i in range(0, n):
        lista = []
        for j in range(0, n):
            lista.append(0)
        matriz.append(lista)
    return matriz

valor_matriz = matriz_quadrada(int(input('Dimensão da matriz: ')))

def organiza(b):
    d = ''
    for a in b:
        d += ' '.join(map(str,a))
        d += '\n'
    return d

print(organiza(valor_matriz))


''''''''''''''''''''''''''''''''''''''''''''''''''''''


