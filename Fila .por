programa {
    // variáveis globais (se estivessem dentro da função início seriam variáveis locais)
    //Declaração do vetor que armazena a fila 
    inteiro fila[10]
    inteiro inicio=0,fim=-1,tamanho=0 // controle do inicio, fim e tamanho da fila. -1 significa que a fila está vazia//
  funcao inicio() {
    inserir(7)
    inserir(5)
    mostrar()
    remover()
    remover()
  }
  //Adiciona item na fila
  funcao inserir (inteiro item){  // temos que declarar o tipo da variável que será inserida e o nme tem que estar relacionado ao que estamos fazendo.
  //Só insere se o tamanho for menor que 10
    se(tamanho<10){ // podemos inserir somente 10 na fila, senão ela vai estourar
      fim=(fim+1)%10 // está adicionando mais um item. o % mostra o resto da divisão. Isso se chama fila circular
      //Item inserido na posição fim
      fila[fim]=item
      tamanho++ // para aumentar o tamanho conforme vai entrando mais item
      escreva("Item ",item," foi adicionado a fila.\n")
    }senao{
      escreva("Fila cheia.🚫")
    } 
  }
  //Remove itens da fila
  funcao remover(){ //não preciso colocar nada dentro dos (), pois está removendo
    se (tamanho>0){
      escreva("Item ",fila[inicio]," foi removido da fila.\n")    
      inicio=(inicio+1)%10
      tamanho-- //diminui o tamanho da fila
    }senao{
      escreva("Fila vazia.⭕")
    }
  }
  //Mostrar fila
  funcao mostrar(){
    //Variável Local
    inteiro posicao=inicio
    escreva("Fila: ")
    para(inteiro i=0;i<tamanho;i++){ //percorre toda a fila
      escreva(fila[posicao]," ")
      posicao=(posicao+1)%10
    } 
    escreva("\n")
  }
}
