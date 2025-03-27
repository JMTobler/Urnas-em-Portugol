programa {
  // Variáveis para contar os votos dos prefeitos
  inteiro votoHerbert = 0
  inteiro votoRibeiro = 0
  inteiro brancoPrefeito = 0
  inteiro nuloPrefeito = 0
  inteiro votosParaTransferir = 0

  // Variáveis para contar os votos dos vereadores
  inteiro votoBarone = 0
  inteiro votoBidu = 0
  inteiro votoMonteiro = 0
  inteiro votoJoaoFera = 0
  inteiro brancoVereador = 0
  inteiro nuloVereador = 0

  // Variáveis para a escolha de voto
  inteiro opcaoPrefeito
  inteiro opcaoVereador

  funcao inicio() {
    inteiro senha
    inteiro opcao

    escreva("Bem vindo a urna das eleiçoes de 2025!! \n\n")

    // Sistema de autenticação do mesário
    enquanto (verdadeiro) {
      escreva("Por favor, entre com a senha de acesso do mesário: ")
      leia(senha)

      escreva("\n")
      escreva("\n")

      se (senha == 2411) {
        escreva("Senha digitada corretamente, iniciando o sistema!! \n\n")
        escreva("\n")
        escreva("\n")
        pare
      } senao {
        escreva("Senha incorreta, verifique as informações digitadas e tente novamente \n\n")
        escreva("\n")
        escreva("\n")
      }
    }

    // Sistema para a coleta de votos
    faca {
      escreva("Por favor, digite a opção desejada: \n")
      escreva("1 - Iniciar a coleta de votos! \n")
      escreva("0 - Encerrar o sistema! \n")

      leia(opcao)

      escolha(opcao) {
        caso 1:
          escreva("Iniciando Votação ...")
        
          escreva("\n")
          escreva("\n")

          ColetaVotoPrefeito()
          ColetaVotoVereador()
          pare
        caso 0:
          escreva("Encerrando o sistema e contando os votos... \n")
          
          escreva("\n")
          escreva("\n")

          escreva("Resultado final da votação para prefeito: \n ")
          escreva("Herbert - ", votoHerbert, " votos! \n")
          escreva("Ribeiro - ", votoRibeiro, " votos! \n")
          escreva("Votos em branco - ", brancoPrefeito, " votos! \n")
          escreva("Votos nulos - ", nuloPrefeito, " votos! \n\n\n")
          calculaResultadoPrefeito()

          escreva("\n")
          escreva("\n")
          escreva("\n")

          escreva("Resultado final da votação para Vereador: \n ")
          escreva("Barone – ", votoBarone, " votos! \n")
          escreva("Bidu – ", votoBidu, " votos! \n")
          escreva("Monteiro – ", votoMonteiro, " votos! \n")
          escreva("João Fera – ", votoJoaoFera, " votos! \n")
          escreva("Votos em branco - ", brancoVereador, " votos! \n")
          escreva("Votos nulos - ", nuloVereador, " votos! \n\n\n")
          calculaResultadoVereador()
          pare
        caso contrario:
          escreva("Opção inválida, tente novamente!!\n")
      }
    } enquanto (opcao != 0)
  }

  funcao ColetaVotoPrefeito() {
    escreva("Vote em seu candidato a prefeito!!\n")
    escreva("Herbert – número 90 \n")
    escreva("Ribeiro – número 95 \n")
    escreva("Branco - número 0 \n")
    leia(opcaoPrefeito)

    escolha(opcaoPrefeito) {
      caso 90:
        votoHerbert++
        escreva("Voto Confirmado para Herbert!! \n\n9")
        pare
        
      caso 95:
        votoRibeiro++
        escreva("Voto Confirmado para Ribeiro!! \n\n")
        pare
        
      caso 0:
        brancoPrefeito++
        escreva("Voto em branco confirmado!! \n\n")
        pare
        
      caso contrario:
        nuloPrefeito++ 
        escreva("Voto nulo confirmado!! \n\n")
        pare
        
    }
  }

  funcao ColetaVotoVereador() {
    escreva("Vote em seu candidato a vereador!!\n")
    escreva("Barone – número 90000 \n")
    escreva("Bidu – número 90999 \n")
    escreva("Monteiro – número 95000 \n")
    escreva("João Fera – número 95999 \n")
    escreva("Branco - número 0 \n")
    leia(opcaoVereador)

    escolha(opcaoVereador) {
      caso 90000:
        votoBarone++
        votosParaTransferir++
        escreva("Voto Confirmado para Barone!! \n\n")
        se (votosParaTransferir % 3 == 0) {
          votoBarone--
          votoBidu++
          }
        pare
        
      caso 90999:
        votoBidu++
        escreva("Voto Confirmado para Bidu!! \n\n")
        pare
        
      caso 95000:
        votoMonteiro++
        escreva("Voto Confirmado para Monteiro!! \n\n")
        pare
        
      caso 95999:
        votoJoaoFera++
        escreva("Voto Confirmado para João Fera!! \n\n")
        pare
        
      caso 0:
        brancoVereador++
        escreva("Voto em branco confirmado!! \n\n")
        pare
        
      caso contrario:
        nuloVereador++
        escreva("Voto nulo confirmado!! \n\n")
        pare
        
    }
  }

  funcao calculaResultadoPrefeito() {
    se (votoHerbert > votoRibeiro) {
      escreva("Prefeito eleito: Herbert. \n")
    }
    senao se (votoRibeiro > votoHerbert) {
      escreva("Prefeito eleito: Ribeiro. \n")
    }
    senao {
      escreva("Empate na eleição para prefeito. \n")
    }
  }

  funcao calculaResultadoVereador() {
    se (votoBarone > votoBidu e votoBarone > votoMonteiro e votoBarone > votoJoaoFera) {
      escreva("Vereador mais votado: Barone. \n")
    } senao se (votoBidu > votoBarone e votoBidu > votoMonteiro e votoBidu > votoJoaoFera) {
      escreva("Vereador mais votado: Bidu. \n")
    } senao se (votoMonteiro > votoBarone e votoMonteiro > votoBidu e votoMonteiro > votoJoaoFera) {
      escreva("Vereador mais votado: Monteiro. \n")
    } senao se (votoJoaoFera > votoBarone e votoJoaoFera > votoBidu e votoJoaoFera > votoMonteiro) {
      escreva("Vereador mais votado: João Fera. \n")
    } senao {
      escreva("Empate na eleição para vereador. \n")
    }
  }
}
