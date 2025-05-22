programa {
  inclua biblioteca Matematica-->m
  funcao inicio() {
    cadeia nome[]={"Luizinha", "Fernando","Cleitinho","Julliana","Nicollas","Anddreia"}
    real peso[]={45.50,95.50,55.52,90.55,72.09,61.70} //Em KG /*associar o peso a pessoa*/
    real altura[]={1.64,2.01,1.58,1.15,1.56,1.62}//Em metros
    real imc
    escreva("------------------------------------------------------\n")/*vetor*/
    escreva("                        TABELA                        \n")/*vetor*/
    escreva("------------------------------------------------------\n")/*vetor*/
    escreva("NOME\t\t\t\tPESO\t\tALTURA\t\tIMC\t\t\tCLASSIFICAÇÃO\n")
    para(inteiro i=0;i<6;i++){ /*para percorrer nosso desvio, eu uso laço de repetição*/
      escreva(nome[i],"\t\t",peso[i],"\t\t",altura[i],"") /*para mostrar somente o nome da pessoa. \t é o tab, para dar espaço*/
      imc=peso[i]/altura[i]*altura[i]
      escreva("\t\t\t",m.arredondar(imc,2),"\t\t")
      se(imc<18.5){
        escreva("Baixo Peso")
      }senao se(imc<24.99){
        escreva("Normal")
      }senao se(imc<29.99){
        escreva("Sobrepeso")
      }senao{
        escreva("Obesidade")
      }
      escreva("\n")
    } 
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */