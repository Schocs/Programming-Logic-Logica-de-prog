programa
{
	logico entrada=falso, ligado=verdadeiro
	funcao inicio()
	{
		inteiro cont=4
		enquanto(ligado==verdadeiro){
		login()
		se(entrada==verdadeiro){
			escreva("executar funções de caixa eletrônico")
		}
		senao{
			escreva("Usuário ou senha incorretos! Tente novamente. Você possui ", cont-1, " tentativas \n")
			cont--
		}
		se(cont==0){
			limpa()
			escreva("Terminal precisará ser reinicializado. Chame um técnico!")
			ligado=falso
		}
		}
	}

	funcao login(){
		cadeia user, senha
		cadeia cadastro[2][4] = {{"João Pedro", "Davi Coelho", "Kauan Oliveira", "Gabriel Pacheco"}, {"joao123", "davi123", "kauan123", "gabriel123"}}
		escreva("Olá, seja bem vindo ao Banco Serratec! Insira seu nome cadastrado: ")
		leia(user)
		escreva("Digite a senha cadastrada: ")
		leia(senha)
		para(inteiro coluna=0; coluna<4; coluna++){
			se(user==cadastro[0][coluna] e senha==cadastro[1][coluna]){
				escreva("Bem vindo, ", user)
				entrada = verdadeiro
				pare
			}
			senao{
				entrada = falso
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */