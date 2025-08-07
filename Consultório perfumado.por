programa {
  // Variáveis globais
  cadeia fila[10]
  inteiro inicio = 0, fim = -1, tamanho = 0

  funcao inicio() {
    inteiro opcao
    cadeia paciente

    faca {
      escreva("\n==============================\n")
      escreva("      🏥 SISTEMA DE FILA\n")
      escreva("==============================\n")
      escreva("1 - Cadastrar paciente ✍️\n")
      escreva("2 - Chamar próximo paciente 📣\n")
      escreva("3 - Mostrar todos pacientes 📋\n")
      escreva("0 - Sair ❌\n")
      escreva("==============================\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha(opcao) {
        caso 1:
          escreva("\n➡️  Cadastro de Paciente\n")
          escreva("Digite o nome do paciente: ")
          leia(paciente)
          inserir(paciente)
          pare

        caso 2:
          escreva("\n➡️  Chamando próximo paciente\n")
          remover()
          pare

        caso 3:
          escreva("\n➡️  Lista de Pacientes na Fila\n")
          mostrar()
          pare

        caso 0:
          escreva("\nSaindo do sistema... Até logo! 👋\n")
          pare

        caso contrario:
          escreva("\n⚠️  Opção inválida. Tente novamente.\n")
      }

    } enquanto(opcao != 0)
  }

  funcao inserir(cadeia nome) {
    se(tamanho < 10) {
      fim = (fim + 1) % 10
      fila[fim] = nome
      tamanho++
      escreva("✅ Paciente \"", nome, "\" foi adicionado à fila.\n")
    } senao {
      escreva("❌ Fila cheia! Não é possível adicionar mais pacientes.\n")
    }
  }

  funcao remover() {
    se(tamanho > 0) {
      escreva("📣 Paciente chamado: ", fila[inicio], "\n")
      inicio = (inicio + 1) % 10
      tamanho--
    } senao {
      escreva("⚠️  A fila está vazia. Nenhum paciente para chamar.\n")
    }
  }

  funcao mostrar() {
    se(tamanho > 0) {
      inteiro posicao = inicio
      escreva("📝 Pacientes na fila (ordem de chegada):\n")
      para(inteiro i = 0; i < tamanho; i++) {
        escreva(i + 1, "º - ", fila[posicao], "\n")
        posicao = (posicao + 1) % 10
      }
    } senao {
      escreva("📭 Nenhum paciente na fila.\n")
    }
  }
}
