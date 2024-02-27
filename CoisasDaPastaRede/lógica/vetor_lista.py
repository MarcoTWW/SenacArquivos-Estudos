numeros = [8, 40, 63, 1, 84]
frutas = ['maça', 'banana', 'figo', 'manga']
boleanos = [True, False, False, False, True]
misto = [1, 'banana', True, 'figo', 89]
lista_listas = [[2, 4, True], ['maça', 5, False], 6, 'figo']

print(numeros)
print(frutas)
print(boleanos)
print(misto)
print(lista_listas)

tamanho_numeros = len(numeros)
print(tamanho_numeros)

for x in range(0, tamanho_numeros):
    print(numeros[x])