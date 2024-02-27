from random import randint

numero_sorteado = 0
sorteados_total = []
while True:
    numero_sorteado = randint(0, 100)
    sorteados_total.append(numero_sorteado)
    if numero_sorteado == 15:
        print('Número correto sorteado!')
        print(f'Os números sorteados foram: {sorteados_total}.')
        print(f'Foram sorteados : {len(sorteados_total)} números.')
        if sorteados_total.count(55) >= 1:
            print('Número 55 encontrado')
        else:
            print('Número 55 não encontrado')
        break