programa {
  inclua biblioteca Matematica-->m
  funcao inicio() {
    cadeia nome[]={"Luizinha", "Fernando","Cleitinho","Julliana","Nicollas","Andreia"}
    real peso[]={45.50,95.50,55.52,90.55,72.09} //Em KG /*associar o peso a pessoa*/
    real altura[]={1.64,2.01,1.58,1.15,1.56}//Em metros
    real imc
    escreva("------------------------------------------------------\n")/*vetor*/
    escreva("                        TABELA                        \n")/*vetor*/
    escreva("------------------------------------------------------\n")/*vetor*/
    escreva("NOME\t\t\t\tPESO\t\tALTURA\t\tIMC\t\t\tCLASSIFICAÇÃO\n")
    para(inteiro i=0;i<5;i++){ /*para percorrer nosso desvio, eu uso laço de repetição*/
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
