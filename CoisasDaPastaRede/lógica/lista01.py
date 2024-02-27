frutas = ['maça', 'banana', 'figo', 'manga', '10']
print(f'Lista Original: {frutas}')

print(f'{frutas[2]}')
print(f'o valor do {frutas[4]} é do tipo {type(frutas[4])}')

frutas.append('kiwi')
print(f'Lista Modificada: {frutas}')

print(frutas)

for indice in range(0, len(frutas)):
    print(f'dentro do indice {indice} da lista, tem o valor {frutas[indice]}')

fruta_a_procurar = frutas.count('lima')

if fruta_a_procurar >= 1:
    print('encontrou lima')
else:
    print('não encontrou lima')

for indice in range(0, len(frutas)):
    if fruta_a_procurar == frutas[indice]:
        print('encontrou lima')
    else:
        print('não encontrou lima')