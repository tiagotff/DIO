nome = "Guilherme"

print(nome.upper())
print(nome.lower())
print(nome.title())

texto = "  Olá, mundo!    "
print(texto + ".")
print(texto.strip() + ".")
print(texto.rstrip() + ".")
print(texto.lstrip() + ".")

menu = "python"

print("###"+menu+"###")
print(menu.center(14))
print(menu.center(30, "#"))
print("p-y-t-h-o-n")
print("-")
print("-".join(menu))