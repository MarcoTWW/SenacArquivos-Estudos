velocidade = int(input('Velocidade do veículo: '))

maior = velocidade > 80
if maior: 
    multa = (velocidade - 80) * 7
    print('A multa é:{} BRL'. format(multa))