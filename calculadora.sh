#!/usr/bin/env python3

def calculadora ():
    while True:
        print("Selecione a operação:")
        print("1 - Soma")
        print("2 - Subtração")
        print("3 - Multiplicação")
        print("4 - Divisão")
        print("5 - Sair")

        opera = input("Escolha a operação, coloque apenas o número:")

        opera = int(opera)

        if opera not in [1, 2, 3, 4, 5]:
            print("Número inválido. Tente novamente.")
            continue

        if opera == 5:
            print("Finalizando...")
            break

        num1 = float(input("Digite o primeiro valor a calcular:"))
        num2 = float(input("Digite o segunfo valor a calcular:"))

        if opera == 1:
            resultado = num1 + num2
        elif opera == 2:
            resultado = num1 - num2
        elif opera == 3:
            resultado = num1 * num2
        elif opera == 4:
            if num2 == 0 or num1 ==0:
                print("Não é possível dividir por zero.")
                continue
            resultado = num1 / num2

        print("O valor é:", resultado)

        while True:

            cont = input("Você gostaria de continuar calculando (sim/nao):")

            cont = cont.lower()

            if cont not in ["sim", "nao"]:
                print("Digite apenas, sim ou nao!")
                continue

            if cont == "nao":
                print("Reniciando...")
                break

            while True:

                if cont == "sim":
                    opera1 = input("Qual operação utilizara com o resultado anterior?")

                opera1 = int(opera1)

                if opera1 not in [1, 2, 3, 4, 5]:
                    print("Número inválido. Tente novamente.")
                    continue

                if opera1 == 5:
                    print("Finalizando...")
                    return

                num3 = float(input("Digite o valor a calcular com o resultado anterior:"))

                if opera1 == 1:
                    resultado = resultado + num3
                elif opera1 == 2:
                    resultado = resultado - num3
                elif opera1 == 3:
                    resultado = resultado * num3
                elif opera1 == 4:
                    if num3 == 0 or resultado ==0:
                        print("Não é possível dividir por zero.")
                        continue
                    resultado = num1 / num2

                print("O valor é:", resultado)

calculadora()

