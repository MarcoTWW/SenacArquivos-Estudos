valorproduto = int(input('Valor do produto: '))
descontoPC = int(input('Valor do desconto (porcentagem):'))
valordesconto = valorproduto * descontoPC / 100
valorfinal = valorproduto - valordesconto
print('Valor original: {}, valor com desconto: {}.'. format(valorproduto, valorfinal))
