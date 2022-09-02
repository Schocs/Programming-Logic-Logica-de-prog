programa
{

	cadeia userSenha[2][3]={{"schocs13", "jotape", "admin"},
							{"Jotape2021!", "maiaJP10", "Admin123#"}}
							
	funcao inicio()
	{
		
		cadeia user=".", pass=",", entrar
		inteiro contador

		escreva("Deseja entrar em nossa loja? Digite s ou n: ")
		leia(entrar)
		se(entrar=="s" ou entrar=="S")	{
			login(user, pass)
									}
		senao	{
		escreva("Obrigado pela visita, volte sempre!")								
				}
							
		
	}

	funcao login(cadeia usuario, cadeia senha)	{
		escreva("Digite o seu nome de usuário: ")
		leia(usuario)
		para(inteiro i=0; i<3; i++){
			se(usuario==userSenha[0][i]){
				escreva("Digite sua senha: ")
				leia(senha)
				se(senha==userSenha[1][i])	{
					escreva("Bem vindo a nossa loja")
										}
				senao{
					escreva("Senha incorreta")						
					}
								   }
			senao	{
				escreva("Usuário não pertence a nossa database")
					}
							  }
										}
}

/*aqui talvez seja necessário usar enquanto, no lugar de para; no entanto, acho que dá pra fazer com para mesmo,
 * só teria de modificar sua posição no código, provavelmente;
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1087; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */