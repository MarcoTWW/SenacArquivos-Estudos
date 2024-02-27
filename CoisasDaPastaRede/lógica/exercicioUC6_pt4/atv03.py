
# print(f'1 x {4} = {4 * 1}')
# print(f'1 x {4} = {4 * 2}')
# print(f'1 x {4} = {4 * 3}')
# print(f'1 x {4} = {4 * 4}')
# print(f'1 x {4} = {4 * 5}')
# print(f'1 x {4} = {4 * 6}')
# print(f'1 x {4} = {4 * 7}')
# print(f'1 x {4} = {4 * 8}')
# print(f'1 x {4} = {4 * 9}')
# print(f'1 x {4} = {4 * 10}')


# print('-' * 40)

# num = 1
# tabuada = int(input('Qual o número da tabuada? '))

# while num <= 10:
#     print(f'{num} * {tabuada} = {num * tabuada}')
#     num = num + 1

# print('-' * 40)

# tabuada = int(input('Qual o número da tabuada? '))
# for x in range(1,11):
#     print(f'{x} * {tabuada} = {x * tabuada}')

# tabuada = int(input('Até que tabuada? '))
# for x in range(1,tabuada+1):
#     print(f'\n---Tabuada do {x}---')
#     for tabuada in range(1,11):
#         print(f'{tabuada} * {x} = {x * tabuada}')

primeiro = int(input("Tabuada inicial: "))
segundo = int(input("Tabuada final: "))

if primeiro < segundo:
    for x in range(primeiro, segundo+1):
        print(f'\n---Tabuada do {x}---\n')
        for tabuada in range(1,10+1):
            print(f'{tabuada} * {x} = {x * tabuada}')
else:
    for x in range(primeiro, segundo-1, -1):
        print(f'\n---Tabuada do {x}---\n')
        for tabuada in range(1,10+1):
            print(f'{tabuada} * {x} = {x * tabuada}')