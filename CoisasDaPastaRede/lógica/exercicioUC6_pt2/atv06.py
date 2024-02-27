km_percorrido = int(input('Km percorridos: '))
dias_alugados = int(input('Dias alugados: '))
precokm = km_percorrido * 60
precodias = dias_alugados * 0.15
print('Preço dos km percorridos: {}, preço dos dias alugados: {}'. format(precokm, precodias))