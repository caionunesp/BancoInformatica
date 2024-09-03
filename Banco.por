programa {
  funcao inicio() {

		real saque, deposito, saldo = 0
    inteiro menu
    cadeia controle
    cadeia extrato = ""

		enquanto (menu != 0)
    {
		escreva ("|------------- MENU -------------| \n")
		escreva ("\nSALDO - R$", saldo, "\n", "Escolha uma das opções a seguir \n 1 - SAQUE \n 2 - DEPÓSITO \n 3 - EXTRATO \n 0 - SAIR \n")
		escreva ("\n|--------------------------------|\n ESCOLHA: ")
		leia (menu)

    escolha (menu){
      caso 1: 
        escreva ("Digite o valor para sacar: ")
        leia (saque)
        enquanto(saque < 0){
          escreva ("Valor digitado Inválido! Digite novamente :")
          leia (saque)
        }
        se (saque <= saldo){
          saldo = saldo - saque
          escreva ("Saque realizado com sucesso!\n")
          escreva ("Aperte ENTER para continuar")
          leia (controle)
          limpa()
          extrato = extrato + "SAQUE ------- R$" + saque + "\n"
        }
        senao {
          escreva ("Saldo Insuficiente!\n")
          escreva ("Aperte ENTER para continuar")
          leia (controle)
          limpa ()
        }
      pare
      caso 2:
        escreva ("Digite o valor para depositar: ")
        leia (deposito)
        enquanto (deposito < 0){
          escreva ("Valor digitado Inválido! Digite Novamente: ")
          leia (deposito)
        }
        saldo = saldo + deposito
        extrato = extrato + "DEPÓSITO ------- R$" + deposito + "\n"
        escreva ("Depósito realizado com sucesso")
        escreva ("Aperte ENTER para continuar")
        leia (controle)
        limpa ()
      pare
      caso 3: 
        escreva (extrato)
        escreva ("Aperte ENTER para continuar")
        leia (controle)
        limpa ()
      pare
      
    }
    }
		
    
  }
}
