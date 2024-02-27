altura = int(input('Altura da parede: '))
largura = int(input('Largura da parede: '))
area = largura * altura
tintaL = area / 2
print('Área da parede {}m², tinta necessária pra pintar a parede {}L'. format(area, tintaL))