programa
{
	inclua biblioteca Util --> u
	logico entrada=falso, ligado=verdadeiro //ligado é para o caixa eletrônico continuar a rodar; entrada é para certificar que o usuário é de fato cadastrado
	real totalDisponivel[5], operacoes10[10][5]	//esse vetor é o saldo de cada um dos 4 usuarios, a matriz é para o extrato; operações é a matriz que recebe as operações de saque e deposito realizada pelo usuario. Insere na matriz de acordo com o id e cont10
	inteiro id=0, cont10[5]={9, 9, 9, 9, 9}	// id é variável global para ser usada em muitas funções e sempre passar o saldo correto, cont10 é vetor para o extrato, contando as 10 operações mais recentes
	cadeia user, senha 
	cadeia cadastro[2][5] = {{"João Pedro", "Davi Coelho", "Kauan Oliveira", "Gabriel Pacheco", "NovoUsuario"}, {"joao123", "davi123", "kauan123", "gabriel123", "NovaSenha"}}
	funcao inicio()
	{
		inteiro cont=4	//Cont é para o caso de alguem errar a senha/usuário 3 vezes. Quando acerta, reseta.
		enquanto(ligado==verdadeiro){
		verificaCadastro()
		se(entrada==verdadeiro){
			escolhaOperacao1()
			cont=4
		}
		senao se(ligado==verdadeiro){
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
		escreva("\t\t\tInsira seu nome cadastrado: ")
		leia(user)
		escreva("\t\t \tDigite a senha cadastrada: ")
		leia(senha)
		escreva("\n \t=================================================================\t\n")
		para(inteiro coluna=0; coluna<5; coluna++){//esse para procura na matriz cadastro se o nome do usuario e a senha são compatíveis. O nome e a senha ficam em linhas diferentes, mas em colunas iguais.
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
		operacoes10[cont10[id]][id]=valor
		cont10[id]--
		resetCont10()
		escolhaOutraOperacao()
	}

	funcao certificar(){ //extra; escolha caso que pergunta ao usário se deseja continuar ou não; falta adicionar aguarde
		inteiro certeza=0
		escreva("\n \t=================================================================\t\n")
		escreva("\t", user, " tem certeza que deseja realizar essa operação? \n \t \t Para sim, digite 1. Para não, digite 2: ")
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
		escreva("\t\t", user, ", deseja realizar outra operação? \n \t\t\tPara sim, digite 1. Para não, digite 2: ")
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
				id=0
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
		operacoes10[cont10[id]][id]=-(valor)
		cont10[id]--
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
		id=0//id precisa ser zerado toda vez que sai. O novo usuario sempre tem id 0, os já cadastrados tem id de 1 a 4
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
		se(cont10[id]==-1){
			cont10[id]=9
		}
	}

	funcao verificaCadastro(){//Verifica se o usuário já está cadastrado no sistema. Se estiver: login, senão: pergunta se deseja. Se deseja: realiza o cadastro, senão: programa fecha.
		caracter verificacao //variável local para seguir o fluxo
		escreva("\n \t=================================================================\t\n")
		escreva("\tBem vindo ao Banco Serratec! Você já possui cadastro no sistema?\n\t\t\tDigite S para sim, N para não: ")
		leia(verificacao)
		se(verificacao=='s' ou verificacao=='S'){
			login()
		}
		senao se(verificacao=='n'ou verificacao=='N'){
			desejaCadastrar()
		}
		senao	{
			verificaCadastro()
		}
	}

	funcao desejaCadastrar(){ //separei da função original porque acho que fica mais fácil de chamar essa funcao caso o usuário digite um valor inválido
		caracter verificacao
		escreva("\t=================================================================\t\n")
		escreva("\t\t\tDeseja se cadastrar? Sim (S) / Não (N): ")
		leia(verificacao)
		se(verificacao=='s' ou verificacao=='S'){
			fazerCadastro()
		}
		senao se(verificacao=='n' ou verificacao=='N'){
			escreva("\t=================================================================\t\n")
			escreva("\t\t\tQue pena! Aguardamos seu retorno!")
			u.aguarde(2000)
			limpa()
			inicio()
			}
		senao	{
			escreva("\n\t\t\tDígito inválido!")
			desejaCadastrar()
		}
	}

	funcao fazerCadastro(){//Realiza o cadastro do usuário. Também verifica se o email já consta no sistema. Se consta: é pedido ao usuário que volte à tela de login, senão: Realiza o cadastro. 
		escreva("\t=================================================================\t\n")
		escreva("\t\tPara começar seu cadastro, digite um nome de usuário: ")
		leia(user)
		se(user==" "){
			escreva("\n \t=================================================================\t\n")
			escreva("\t\t\t\tNome inválido!")
			fazerCadastro()
		}
		senao{
			para(inteiro i=0; i<5; i++){
				se(user==cadastro[0][i]){
					escreva("Usuário já cadastrado! Você será levado à tela inicial. Faça o login.")
					escreva("Retornando ao menu inicial...")
					u.aguarde(2500)
					limpa()
					inicio()
				}
			}
		}
		cadastro[0][4]=user
		escreva("\t\t\t\tDigite sua senha pessoal: ")
		leia(senha)
		cadastro[1][4]=senha
		escreva("\n \t=================================================================\t\n")
		escreva(user, ", obrigado por escolher o Banco Serratec! Sua conta pessoal está pronta para uso!")
		escolhaOperacao1()
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1093; 
 * @DOBRAMENTO-CODIGO = [29, 49, 64, 80, 110, 104, 259];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {operacoes10, 5, 26, 11}-{cont10, 6, 15, 6}-{cadastro, 8, 8, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */