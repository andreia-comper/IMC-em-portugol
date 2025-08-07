programa {
  inclua biblioteca Util --> u
  //variáveis globais (são vistas por todo o programa)
  inteiro pilha [6] // Tamanho da pilha (stack)
  inteiro topo=-1 // Pilha vazia
  funcao inicio() {
    push(10)
    push(32)
    push(7)
    pop()
    push(37)
  }
  //Adiciona item a pilha (Push)
  funcao push(inteiro valor){  // quando quero puxar um número da pilha, uso Push, quando quero tirar uso Pop
    // verifica se não estorou (passou do da tamanho) a pilha
    se(topo<5){ // tenho que olhar para o topo para saber onde minha variável está
      topo++ // é o que o topo tinha +1
      pilha[topo]=valor
      escreva("Empilhando:",valor,"\n")
    }senao{
      escreva("Erro: pilha cheia.🔋")
    }
    mostraPilha()
  } // Fim função Push
  //Função Pop - função que remove item da pilha 
  funcao pop(){
    //verifica se tem item na pilha
    se(topo>=0){
      escreva("Desempilhando: ",pilha[topo], "\n")
      topo-- //para decrementar o topo, diminuir
    }senao{
      escreva("Erro: A pilha está vazia.🪫")
    }
    mostraPilha()
  } // Fim função Pop
  //Função mostra pilha
  funcao mostraPilha(){
    se(topo==-1){
      escreva("A pilha está vazia. 🪫")
    }senao{
      para(inteiro i=topo;i>=0;i--){
        escreva(pilha[i], " ")
      }
      escreva("\n")
    }
  }
}





