/* RPG: Em busca da aprovação. 
Você é um aluno do Senai que está cursando a unidade curricular de Lógica de Programação e está em busca da aprovação nesta UC, cujo o professor é o Bauminha. 
Você deve iniciar o jogo indicando o seu personagem.
Início do Jogo: escolha seu personagem
Personagem Miro: é um jovem aprendiz com um intelecto afiado e uma paixão pela teoria da programação.
Habilidades: 
Estudioso; Persistente e Criativo
Fraqueza Principal: Dificuldade com Pressão. Embora seja persistente, em momentos de alta pressão (como um tempo limitado para entregar um projeto ou uma avaliação direta com o Bauminha), Miro pode travar ou ter sua performance reduzida. O medo de errar e a necessidade de perfeição podem ser paralisantes.
Impacto no Jogo: Em desafios com tempo cronometrado ou sob observação direta do professor, Miro pode sofrer penalidades maiores se cometer erros ou não conseguir entregar a solução com a agilidade esperada. Sua mente brilhante pode falhar sob estresse.
Mochila: livros de programação, caderno de anotações, garrafa de água. 
Personagem: Mário
Mário: é um colega vibrante, que aprende fazendo e adora compartilhar seu conhecimento.
Habilidades: 
Prático; Curioso e Questionador; Bom em Apresentações.
Fraqueza Principal: Impaciência com a Teoria Abstrata: Mário prefere ir direto para o código e testar, o que o faz não prestar tanta atenção em aulas puramente teóricas ou na memorização de definições abstratas. Conceitos sem aplicação imediata podem entediá-lo.
Impacto no Jogo: Quando o Professor Bauminha fizer perguntas que exigem conhecimento teórico específico, definições formais ou a aplicação de regras abstratas sem um contexto prático claro, Mário terá mais dificuldade e poderá perder pontos ou tempo, precisando de mais tentativas para acertar.
Mochila: celular, fone de ouvido, bala de goma
Seu objetivo é claro: responder a 3 perguntas sobre Lógica de Programação. Para ser aprovado, você precisa acertar 2 ou mais delas. Caso contrário, será reprovado.
Cada desafio será uma pergunta de múltipla escolha, com duas respostas. Suas respostas, o uso dos itens da mochila e a sua performance serão avaliados. O Professor Bauminha reagirá diretamente às suas escolhas, e o resultado final determinará seu destino na UC. */

programa
{
  funcao inicio()
  {
    // Declaração de variáveis para armazenar dados do jogador e controle do jogo
    cadeia nomeJogador, personagemEscolhido  
    inteiro respostasCorretas = 0, escolhaOPersonagem, respostapergunta1, respostaPergunta2, respostaPergunta3
    logico aprovadoBauminha = falso
    logico pergunata1Acertada = falso
    logico pergunata2Acertada = falso
    logico pergunata3Acertada = falso
    inteiro tentativasPergunta1 = 0
    inteiro tentativasPergunta2 = 0
    inteiro tentativasPergunta3 = 0

    // Imprime o cabeçalho do jogo com linhas decorativas e o título
    escreva("--------------------------------------------------\n")
    escreva("           RPG: EM BUSCA DA APROVAÇÃO             \n")
    escreva("--------------------------------------------------\n")

    // Apresenta a missão do jogo para o jogador
    escreva("Sua missão: Ser aprovado na UC de Lógica de Programação do Professor Bauminha.\n\n")

    // Solicita que o jogador digite seu nome
    escreva("Qual é o seu nome? ")
    leia(nomeJogador)

    // Saúda o jogador pelo nome e solicita que escolha um personagem
    escreva("\n Olá, "+  nomeJogador + " Escolha o seu personagem\n")
    escreva("1. Miro: Estudioso, Persistente, Criativo\n")
    escreva("2. Mário: Prático, Curioso, Bom em Apresentações\n")
    escreva("Sua escolha: 1 ou 2: ")
    leia(escolhaOPersonagem)

    // Estrutura de escolha para definir qual personagem o jogador escolheu
    escolha (escolhaOPersonagem) {
      caso 1:
        personagemEscolhido = "Miro"              // Atribui o personagem Miro
        escreva("\nVocê escolheu Miro.\n")        // Confirma a escolha ao jogador
        pare
      caso 2:
        personagemEscolhido = "Mário"             // Atribui o personagem Mário
        escreva("\nVocê escolheu Mário.\n")       // Confirma a escolha ao jogador
        pare
      caso contrario:
        escreva("\nEscolha inválida. Você será Miro por padrão.\n") // Trata entrada inválida
        personagemEscolhido = "Miro"              // Define Miro como personagem padrão
        pare
    }

    // Separador visual para início do jogo
    escreva("\n--------------------------------------------------\n")
    escreva("------------------Início do jogo--------------------\n")
    escreva("--------------------------------------------------\n\n")

    // Explica as regras do desafio: três perguntas e aprovação com 2 ou mais acertos
    escreva("O Professor Bauminha entra na sala e avisa que você responderá um desafio. Serão três perguntas. Acerte duas ou mais para a aprovação!'\n\n")
   
    // Pergunta 1
    escreva("--- Pergunta 1/3 ---\n")
    escreva("Bauminha: 'Como funciona uma variável no Portugol?'\n")
    escreva("1. É um local fixo na tela para exibir mensagens.\n")
    escreva("2. É um espaço na memória para armazenar dados que podem mudar.\n")
    escreva("3. É um comando para iniciar o programa.\n")
   
    // Loop para permitir até 2 tentativas para responder a pergunta 1
    faca {
      escreva("\nSua resposta (1,2 ou 3): ")
      leia(respostapergunta1)       // Lê a resposta do jogador
      tentativasPergunta1++         // Incrementa o número de tentativas da pergunta 1

      // Verifica se a resposta está correta (resposta correta = 2)
      se (respostapergunta1 == 2) {
        escreva("\nCORRETO! Bauminha: 'Muito bem, parabéns, você acertou 👏🏽'\n") // Feedback positivo
        respostasCorretas++           // Incrementa o contador de respostas certas
        pergunata1Acertada = verdadeiro // Marca pergunta 1 como acertada
      } senao {
        // Feedback para resposta incorreta
        escreva("\nINCORRETO. Bauminha: 'Infelizmente você não acertou essa questão, tente novamente ☹️.'\n")
       
        // Verifica se esta foi a primeira tentativa incorreta
        se (tentativasPergunta1 == 1) {
          escreva("Você tem mais uma tentativa para esta pergunta.\n") // Aviso de nova chance
        } senao {
          escreva("Você esgotou suas tentativas para esta pergunta. O Bauminha parece um pouco decepcionado 😿.\n") // Aviso de fim das tentativas
          pare  // Sai do loop da pergunta após 2 tentativas erradas
        }
      }
    } enquanto (nao pergunata1Acertada e tentativasPergunta1 < 1) // Continua enquanto não acertar e tentativas < 2

    // Pergunta 2
    escreva("\n--- Pergunta 2/3 ---\n")
    escreva("Bauminha: 'O que é um pseudocódigo?'\n")
    escreva("1. Uma linguagem de programação real para computadores.\n")
    escreva("2. Um vírus de computador.\n")
    escreva("3. Uma forma de representar algoritmos usando linguagem informal não executável.\n")

    // Loop para até 2 tentativas para a pergunta 2
    faca {
      escreva("\nSua resposta (1, 2 ou 3): ")
      leia(respostaPergunta2)      // Lê resposta do jogador
      tentativasPergunta2++        // Incrementa número de tentativas da pergunta 2

      // Avalia a resposta usando estrutura escolha (switch)
      escolha (respostaPergunta2) {
        caso 3: // Resposta correta
          escreva("\nCORRETO! Bauminha: 'Muito bem, parabéns, você passou 👏🏽.'\n")
          respostasCorretas++
          pergunata2Acertada = verdadeiro
          pare // Sai do loop da pergunta ao acertar
        caso contrario:
          escreva("\nINCORRETO. Bauminha: 'Precisa rever seus conceitos, " + nomeJogador + ".🤨 '\n")
          se (tentativasPergunta2 == 1) {
            escreva("Você tem mais uma tentativa para esta pergunta.\n")
          } senao {
            escreva("Você esgotou suas tentativas para esta pergunta. O Bauminha está triste com suas respostas 🥹.\n")
            pare // Sai do loop após 2 tentativas erradas
          }
          pare
      }
    } enquanto (nao pergunata2Acertada e tentativasPergunta2 < 2)

    // Pergunta 3
    escreva("\n--- Pergunta 3/3 ---\n")
    escreva("Bauminha: 'Para finalizar, como funciona o /senão/ no Portugol?'\n")
    escreva("1. Ele executa a primeira condição que for verdadeira.\n")
    escreva("2. Ele executa se a condição do 'se' for falsa.\n")
    escreva("3. Ele sempre executa, independentemente da condição.\n")

    // Loop para até 2 tentativas para a pergunta 3
    faca {
      escreva("\nSua resposta (1, 2 ou 3): ")
      leia(respostaPergunta3)       // Lê resposta do jogador
      tentativasPergunta3++         // Incrementa tentativas da pergunta 3

      escolha (respostaPergunta3) {
        caso 2: // Resposta correta
          escreva("\nCORRETO! Bauminha: 'Muito bem, parabéns, você foi muito bem 👏🏽.'\n")
          respostasCorretas++
          pergunata3Acertada = verdadeiro
          pare
        caso contrario:
          escreva("\nINCORRETO. Bauminha: 'Foi mal. reveja a estrutura 'se-senão', " + nomeJogador + "🤦🏽.'\n")
          se (tentativasPergunta3 == 1) {
            escreva("Você tem mais uma tentativa para esta pergunta.\n")
          } senao {
            escreva("Você esgotou suas tentativas para esta pergunta. O veredito se aproxima.\n")
            pare
          }
          pare
      }
    } enquanto (nao pergunata3Acertada e tentativasPergunta3 < 2)

    // Impressão do resultado final
    escreva("\n--------------------------------------------------\n")
    escreva("VEREDITO DO PROFESSOR BAUMINHA!\n")
    escreva("Você acertou " + respostasCorretas + " de 3 perguntas.\n\n")

    // Verifica se o jogador foi aprovado (2 ou mais acertos)
    se (respostasCorretas >= 2) {
      escreva("PARABÉNS, " + nomeJogador + " (" + personagemEscolhido + ")! Você foi APROVADO na UC de Lógica de Programação!\n")
      escreva("Professor Bauminha: 'Seu esforço e dedicação valeram a pena. Continue assim!😃👏🏽👏🏽👏🏽'\n")
      aprovadoBauminha = verdadeiro
    } senao {
      escreva("Infelizmente, " + nomeJogador + " (" + personagemEscolhido + "), você foi REPROVADO na UC do Professor Bauminha.\n")
      escreva("Professor Bauminha: 'Não desanime. pratique mais e nos vemos na próxima UC! 🫣😉'\n")
      aprovadoBauminha = falso
    }

    // Linha final para encerrar o jogo visualmente
    escreva("--------------------------------------------------\n")
  }
}