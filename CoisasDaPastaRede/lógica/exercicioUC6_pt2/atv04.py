valorsalario = int(input('Valor do salario: '))
descontoPC = int(input('Valor do acrescimo (porcentagem):'))
valoracrescimo = valorsalario * descontoPC / 100
valorfinal = valorsalario + valoracrescimo
print('Valor original: {}, valor com acrescimo: {}.'. format(valorsalario, valorfinal))