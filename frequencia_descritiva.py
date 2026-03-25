# Solicita o tamanho e as idades
tamanho = int(input("Quantas idades quer informar? "))

if tamanho > 0:
    idades = []
    for i in range(tamanho):
        idade = int(input(f"Idade {i + 1}: "))
        idades.append(idade)

    # 1. Ordenação (Rol)
    idades.sort()

    print("\nRol (ordem crescente):")
    for i, idade in enumerate(idades):
        print(f"{i + 1}. {idade}")

    # 2. Tabela de Frequências
    print("\nTabela de Frequencias:")
    print(f"{'Idade':<6} | {'Simples':<8} | {'Relativa':<9} | {'Acumulada':<10} | {'Rel. Acum.':<10}")
    print("-" * 55)

    freq_simples = 0
    acumulada = 0

    for i in range(tamanho):
        freq_simples += 1
        acumulada += 1

        # Verifica se é a última ocorrência dessa idade
        if i == tamanho - 1 or idades[i] != idades[i + 1]:
            # Cálculos das relativas
            rel_simples = (freq_simples / tamanho) * 100
            rel_acumulada = (acumulada / tamanho) * 100

            print(f"{idades[i]:<6} | {freq_simples:<8} | {rel_simples:>7.2f}% | {acumulada:<10} | {rel_acumulada:>8.2f}%")
            
            # Reseta a frequência simples para a próxima idade diferente
            freq_simples = 0
