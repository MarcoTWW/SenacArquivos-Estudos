'''
Colunas    1   2   3   4   5

linha 1    a   b   c   d   e
linha 2    f   g   h   i   j
linha 3    k   l   m   n   o
linha 4    p   q   r   s   t
linha 5    u   v   w   x   y
linha 6    z


casa = c=L1,C3 - a=L1,C1 - s=L4,C4 - a=L1,C1
doce = d=L1,C4 - o=L3,C5 - c=L1,C3 - e=L1,C5
balao = b=L1,C2 - a=L1,C1 - l=L3,C2 - a=L1,C1 - o=L3,C5
abacaxi = a=L1,C1 - b=L1,C2 - a=L1,C1 - c=L1,C3 - a=L1,C1 - x=L5,C4 - i=L2,C4
rosa = r=L4,C3 - o=L3,C5 - s=L4,C4 - a=L1,C1 -
quatro = q=L4,C2 - u=L5,C1 - a=L1,C1 - t=L4,C5 - r=L4,C3 - o=L3,C5
pergaminho = p=L4,C1 - e=L1,C5 - r=L4,C3 - g=L2,C2 - a=L1,C1 - m=L3,C3 - i=L2,C4 - n=L3,C4 - h=L2,C3 - o=L3,C5
roxo = r=L4,C3 - o=L3,C5 - x=L5,C4 - o=L3,C5
jesus = j=L2,C5 - e=L1,C5 - s=L4,C4 - u=L5,C1 - s=L4,C4
cidade = c=L1,C3 - i=L2,C4 - d=L1,C4 - a=L1,C1 - d=L1,C4 - e=L1,C5
'''

a = [
        ['a','b','c','d','e'],
        ['f','g','h','i','j'],
        ['k','l','m','n','o'],
        ['p','q','r','s','t'],
        ['u','v','w','x','y'],
        ['z']
     ]

print(F'Qual palavra será? {a[0][2]}{a[0][0]}{a[3][3]}{a[0][0]}')
print(F'Qual palavra será? {a[0][3]}{a[2][4]}{a[0][2]}{a[0][4]}')
print(F'Qual palavra será? {a[0][1]}{a[0][0]}{a[2][1]}{a[0][0]}{a[2][4]}')
print(F'Qual palavra será? {a[0][0]}{a[0][1]}{a[0][0]}{a[0][2]}{a[0][0]}{a[4][3]}{a[1][3]}')
print(F'Qual palavra será? {a[3][2]}{a[2][4]}{a[3][3]}{a[0][0]}')
print(F'Qual palavra será? {a[3][1]}{a[4][0]}{a[0][0]}{a[3][4]}{a[3][2]}{a[2][4]}')
print(F'Qual palavra será? {a[3][0]}{a[0][4]}{a[3][2]}{a[1][1]}{a[0][0]}{a[2][2]}{a[1][3]}{a[2][3]}{a[1][2]}{a[2][4]}')
print(F'Qual palavra será? {a[3][2]}{a[2][4]}{a[4][3]}{a[2][4]}')
print(F'Qual palavra será? {a[1][4]}{a[0][4]}{a[3][3]}{a[4][0]}{a[3][3]}')
print(F'Qual palavra será? {a[0][2]}{a[1][3]}{a[0][3]}{a[0][0]}{a[0][3]}{a[0][4]}')


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


matriz = []

for i in range(0,3):
    matriz.append(0)
print(matriz)

for i in range(0,3):
    matriz[i] = 1
print(matriz)

matriz1 = []
for i in range(0,3):
    lista = []
    for j in range(0,3):
        lista.append(0)
    matriz1.append(lista)