menu = """

[1] Depositar
[2] Sacar
[3] Extrato
[0] Sair

▶ """

saldo = 0  # Valor atual em conta
limite = 500  # Limite máximo por saque
extrato = ""  # Histórico de operações
numero_saques = 0  # Contador de saques realizados
LIMITE_SAQUES = 3  # Saques permitidos por sessão


while True:
    opcao = int(input(menu))


    if opcao == "1":
        
        # Solicita ao usuário que informe o valor a ser depositado
        # A função input() retorna uma string, por isso usamos float() para converter para número decimal
        valor = float(input("\n🔹Informe o valor do depósito: "))

        # ✅ Verifica se o valor informado é positivo (maior que zero)
        if valor > 0:
            # Soma o valor ao saldo atual da conta
            saldo += valor

            # Registra o valor no extrato, formatando com 2 casas decimais
            # \n no final serve para pular uma linha no extrato
            extrato += f"Depósito: R$ {valor:.2f}\n"
        
        else:
            # Caso o valor seja zero ou negativo, exibe mensagem de erro
            print("\n⛔ Valor inválido para depósito.")

    elif opcao == "2":

        # Solicita ao usuário o valor que ele deseja sacar
        valor = float(input("\n🔹Informe o valor do saque: "))

        # Verifica três condições:
        # 1. Se o valor é maior que 0
        # 2. Se o valor não ultrapassa o limite permitido por saque (R$ 500, por exemplo)
        # 3. Se o número de saques feitos ainda está dentro do limite (máximo de 3)
        if 0 < valor <= limite and numero_saques < LIMITE_SAQUES:

            # Agora verifica se o saldo atual é suficiente para o saque
            if valor <= saldo:
                # Realiza o saque, subtraindo o valor do saldo
                saldo -= valor

                # Registra a operação no extrato, formatando com 2 casas decimais
                extrato += f"Saque: R$ {valor:.2f}\n"

                # Incrementa o número de saques realizados
                numero_saques += 1

            else:
                # Se não tiver saldo suficiente, mostra esta mensagem
                print("\n⛔ Saldo insuficiente.")

        else:
            # Se o valor for inválido OU o limite de saques foi atingido, mostra erro
            print("\n⛔ Valor inválido para saque ou limite de saques atingido.")

    elif opcao == "3":
        
        # Exibe o título da seção de extrato
        print("\n📜Extrato:\n")

        # Exibe o conteúdo do extrato, que contém os depósitos e saques já realizados
        # Se nenhuma operação foi feita, a string estará vazia
        print("Não foram realizadas movimentações." if not extrato else extrato)

        # Exibe o saldo atual da conta formatado com duas casas decimais
        print(f"Saldo atual: R$ {saldo:.2f}")


    elif opcao == "0":
        print("\n🔸Obrigado por utilizar nosso sistema!")
        break

    else:
        print("\n⛔ Opção inválida. Tente novamente.")