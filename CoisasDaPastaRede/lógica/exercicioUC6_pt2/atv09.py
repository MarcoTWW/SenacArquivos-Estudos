contagemA = int (input('Contagem na parada A: '))
contagemB = int (input('Contagem na parada B: '))
contagemC = int (input('Contagem na parada C: '))
contagemAB = contagemB - contagemA
contagemBC = contagemC - contagemB
contagemABC = contagemC - contagemA
print('O número de passageiros que embarcaram em cada ponto é: A até B: {}, B até C: {} e no trecho total foram {} passageiros'. format(contagemAB, contagemBC, contagemABC))
