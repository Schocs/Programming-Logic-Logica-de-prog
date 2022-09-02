programa
{
	
	funcao inicio()
	{
		
	}

	funcao inteiro soma(inteiro num1, inteiro num2)	{
			inteiro resultado = 0
			escreva("Digite um número: ")
			leia(num1)
			cadeia continuar="s", somar
			enquanto(continuar=="s" ou continuar=="S"){
				escreva("Digite outro número: ")
				leia(num2)
				resultado = num1+num2
				escreva("Deseja somar outro número? Digite 's' para sim, 'n' para não: ")
				leia(somar)
				se(somar=="s" ou somar=="S")	{
					
										}
			}
	}
}
/*funcao para soma, divisão, exponencial, multiplicação e subtração.
 * Essas funções serão chamadas de acordo com a escolha do usuário, a partir de números(ou símbolos)
 * Caso o usuário queira adicionar outro número à operação, ou a partir do resultado obtido na primeira operação ele 
 * quiser fazer outra operação, ele poderá
 * 1- ler números do usário
 * 2- ler qual operação ele deseja fazer
 * 3- Atribuir resultado a uma variável. Imprimir resultado
 * 4- Perguntar: deseja fazer outra operação com esse resultado? 
 * 		Se sim, chamar função escolha caso
 * 		senao perguntar: deseja fazer outra operação?
 * 			se sim, voltar ao inicio do programa
 * 			senao, acaba
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */