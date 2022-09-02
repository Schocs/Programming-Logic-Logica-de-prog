programa
{//só falta colocar junto com o código do davi, o resto tá pronto
	inclua biblioteca Util --> u
	logico entrada=falso, ligado=verdadeiro //ligado é para o caixa eletrônico continuar a rodar; entrada é para certificar que o usuário é de fato cadastrado
	real totalDisponivel[5], operacoes10[10][5]	//esse vetor é o saldo de cada um dos 4 usuarios, a matriz é para o extrato
	inteiro id=0, cont10=9	// id é variável global para ser usada em muitas funções e sempre passar o saldo correto, cont10 é para o extrato
	cadeia user, senha 
	cadeia cadastro[2][4] = {{"João Pedro", "Davi Coelho", "Kauan Oliveira", "Gabriel Pacheco"}, {"joao123", "davi123", "kauan123", "gabriel123"}}
	funcao inicio()
	{
		inteiro cont=4	//Cont é para o caso de alguem errar a senha/usuário 3 vezes. Quando acerta, reseta.
		enquanto(ligado==verdadeiro){
		login()
		se(entrada==verdadeiro){
			escolhaOperacao1()
			cont=4
		}
		senao{
			escreva("\tUsuário ou senha incorretos! Tente novamente. Você possui ", cont-1, " tentativas \n")
			cont--
		}
		se(cont==0){
			limpa()
			escreva("Terminal precisará ser reinicializado. Chame um técnico!")
			ligado=falso
		}
		}
	}

	funcao login(){ //cada usuário cadastrado na matriz cadastro possui um nome e uma senha numa posição específica. Variável entrada só é verdadeira se senha e usuário corresponderem ao cadastrado(senha e usuario ficam na mesma coluna da matriz, apenas em linhas diferentes)
		escreva("\n \t=================================================================\t\n")
		escreva("\tOlá, seja bem vindo ao Banco Serratec! Insira seu nome cadastrado: ")
		leia(user)
		escreva("\t\t \tDigite a senha cadastrada: ")
		leia(senha)
		escreva("\n \t=================================================================\t\n")
		para(inteiro coluna=0; coluna<4; coluna++){
			se(user==cadastro[0][coluna] e senha==cadastro[1][coluna]){
				escreva("\t\t\t\tBem vindo, ", user)
				entrada = verdadeiro
				idUsuario()
				pare
			}
			senao{
				entrada = falso
			}
		}
	}

	funcao idUsuario(){ //dá um id para ser usado em outras funções(depósito, saldo etc)
		se(user=="João Pedro"){
			id=1
		}	
		se(user=="Davi Coelho"){
			id=2
		}
		se(user=="Kauan Oliveira"){
			id=3
		}
		se(user=="Gabriel Pacheco"){
			id=4
		}
	}

	funcao deposito(){ //a partir do id, insere um valor novo no vetor totalDisponivel
		real valor=0.0
		limpa()
		escreva("\n \t=================================================================\t\n")
		escreva("\tVocê selecionou depósito. Quanto deseja depositar em sua conta?\n\t\t\tDigite o valor: ")
		leia(valor)
		certificar()
		totalDisponivel[id] = totalDisponivel[id]+valor
		escreva("\n \t=================================================================\t\n")
		escreva("\tSucesso! Você depositou ", valor, " reais em sua conta. Possui agora: ", totalDisponivel[id])
		operacoes10[cont10][id]=valor
		cont10--
		resetCont10()
		escolhaOutraOperacao()
	}

	funcao certificar(){ //extra; escolha caso que pergunta ao usário se deseja continuar ou não; falta adicionar aguarde
		inteiro certeza=0
		escreva("\n \t=================================================================\t\n")
		escreva("\t", user, " tem certeza que deseja realizar essa operação? \n \t \t Digite 1 para sim, 2 para não: ")
		leia(certeza)
		escolha(certeza) {
			caso 1 :
				escreva("\n \t\t\tProcessando operação... \n")
				u.aguarde(2000)
				limpa()
				pare
			caso 2 :
				escreva("\n\tRetornando ao menu de usuário... \n")
				u.aguarde(2000)
				limpa()
				escolhaOperacao1()
				pare
			caso contrario :
				escreva("Dígito inválido!")
				certificar()
				pare				
		}
	}

	funcao escolhaOperacao1(){ //basicamente um escolha caso para levar a uma tela de operações
		inteiro opcao
		escreva("\n\t \t \t", user, ", qual operação deseja realizar?\t")
		escreva("\n \t=================================================================\t\n")
		escreva("\t Digite: \n\t 1 para depositar; \t 2 para sacar; \t 3 para ver o saldo\n \t 4 para ver as últimas 10 operações; \t 5 para sair: \t")
		leia(opcao)
		escolha(opcao){
			caso 1: 
				deposito()
				pare
			caso 2:
				saque()	
				pare
			caso 3:
				saldo()
				pare
			caso 4:
				ultimas10Op()
				pare
			caso 5:
				sair()
				pare
			caso contrario:
				limpa()
				escreva("\t\t\t\tDígito inválido!")
				escolhaOperacao1()
				pare					
		}
	}

	funcao escolhaOutraOperacao(){ // é outro escolha caso, que é utilizado após cada operação realizada
		inteiro outraOpe=0 
		escreva("\n \t=================================================================\t\n")
		escreva("\t\t", user, ", deseja realizar outra operação? \n \t\t\t Digite 1 para sim, 2 para não: ")
		leia(outraOpe)
		escolha(outraOpe){
			caso 1:
				escreva("\n\t\t\tRetornando ao menu...")
				u.aguarde(3000)
				limpa()
				escolhaOperacao1()
				pare
			caso 2:
				escreva("\n \t=================================================================\t\n\n")
				escreva("\t\t", user, ", obrigado por utilizar o Banco Serratec!\n")
				u.aguarde(3500)
				limpa()
				inicio()
				pare
			caso contrario:
				limpa()
				escreva("\t\t\t\t Dígito inválido!\t\t")
				escolhaOperacao1()
				pare	
		}
	}

	funcao saque(){//exato oposto da funcao deposito. Possui um if para a situação em que saldo=0 ou valor sacado>saldo
		real valor=0.0
		limpa()
		escreva("\n \t=================================================================\t\n")
		escreva("\tVocê selecionou saque. Quanto deseja sacar de sua conta?\n\t\t\tDigite o valor: ")
		leia(valor)
		certificar()
		se(totalDisponivel[id]==0 ou totalDisponivel[id]<valor){
			escreva("\n \t=================================================================\t\n")
			escreva(" \t \tVocê não possui essa quantia em caixa...")
			escolhaOutraOperacao()
		}
		senao{
		totalDisponivel[id] = totalDisponivel[id]-valor
		escreva("\n \t=================================================================\t\n")
		escreva(" \tSucesso! Você sacou ", valor, " reais de sua conta. Possui agora: ", totalDisponivel[id])
		operacoes10[cont10][id]=-(valor)
		cont10--
		resetCont10()
		escolhaOutraOperacao()
		}
	}

	funcao saldo(){//imprime saldo atualizado na tela
		escreva("\n \t=================================================================\t\n")
		escreva("\t\t", user, ", seu saldo atual é de: ", totalDisponivel[id], " reais.")
		escolhaOutraOperacao()
	}

	funcao sair(){//volta à tela inicial
		certificar()
		inicio()
	}

	funcao ultimas10Op(){//imprime na tela as 10 ultimas operações. Tá dando um problema porque tentei fazer pra todos de uma só maneira e com uma só variável. A solução que me vem a mente é utilizar uma variável contadora para cada usuario cadastrado
		escreva("\n \t=================================================================\t\n")
		escreva("\t\t\t Os últimos 10 saques ou depósitos são: \n")
		escreva("\t\t\t\t",operacoes10[0][id],"\n")
		para(inteiro i=0; i<10; i++){
			escreva("\t\t\t\t",operacoes10[i][id],"\n")
		}
		saldo()
	}

	funcao resetCont10(){ //funcao para resetar cont10 de volta a 9, posta ao final de deposito e saque
		se(cont10==-1){
			cont10=9
		}
	}

	funcao verificaCadastro(){//Verifica se o usuário já está cadastrado no sistema. Se estiver: login, senão: pergunta se deseja. Se deseja: realiza o cadastro, senão: programa fecha.
		
	}

	funcao fazerCadastro(){
		
	}

	//problema: tem que arranjar uma maneira diferente de utilizar o cont10. O reset dele tem que acontecer toda vez que o id mudar
}

/*Adicionar 2 funções: verificarCadastro e fazerCadastro; aprimorar o login(); lidar com o problema de cont10
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7256; 
 * @DOBRAMENTO-CODIGO = [29, 49, 64, 80, 110, 104, 134, 161, 184, 190, 195, 205];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {operacoes10, 5, 26, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */