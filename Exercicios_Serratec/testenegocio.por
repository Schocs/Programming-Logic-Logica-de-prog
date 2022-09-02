programa
{
	inclua biblioteca Util --> u
	cadeia user, senha
	cadeia cadastro[2][5]={{"aaa", "www", "sss", "qqq", "NovoUsuario"}, {"ass", "wqq", "saa", "qww", "NovaSenha"}}
	funcao inicio()
	{
		verificaCadastro()
	}

	funcao login(){
		escreva("Bem vindo!")
	}

	funcao sair(){
		inicio()
	}
funcao verificaCadastro(){//Verifica se o usuário já está cadastrado no sistema. Se estiver: login, senão: pergunta se deseja. Se deseja: realiza o cadastro, senão: programa fecha.
		caracter verificacao //variável local para seguir o fluxo
		escreva("Bem vindo ao Banco Serratec! Você já possui cadastro no sistema? Digite S para sim, N para não: ")
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
		escreva("Deseja se cadastrar? Sim (S) / Não (N): ")
		leia(verificacao)
		se(verificacao=='s' ou verificacao=='S'){
			fazerCadastro()
		}
		senao se(verificacao=='n' ou verificacao=='N'){
			escreva("Que pena! Aguardamos seu retorno!")
			sair()
			}
		senao	{
			escreva("Dígito inválido!")
			desejaCadastrar()
		}
	}

	funcao fazerCadastro(){//Realiza o cadastro do usuário. Também verifica se o email já consta no sistema. Se consta: é pedido ao usuário que volte à tela de login, senão: Realiza o cadastro. 
		escreva("Para começar seu cadastro, digite um nome de usuário: ")
		leia(user)
		se(user==" "){
			escreva("Nome inválido!")
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
		cadastro[0][0]=user
		escreva("Digite sua senha pessoal: ")
		leia(senha)
		cadastro[1][0]=senha
		escreva(user, ", obrigado por escolher o Banco Serratec! Sua conta pessoal está pronta para uso!")
		escolhaOperacao1()
	}
	
	funcao escolhaOperacao1(){
		inicio()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */