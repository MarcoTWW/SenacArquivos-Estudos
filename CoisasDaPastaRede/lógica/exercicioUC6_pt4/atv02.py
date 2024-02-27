idade = int(input("Digite sua idade: "))
if idade >= 18:
    print("Você é maior de idade, pode votar e tirar habilitação para dirigir.")
elif idade >= 16 and idade <= 18:
    print("Você já pode votar.")
else:
    print("Você é menor de idade, não pode votar e não pode dirigir.")