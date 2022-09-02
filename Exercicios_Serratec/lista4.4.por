programa
{
	
	funcao inicio()
	{
		inteiro num=1, primeiro=0, segundo=0, terceiro=0, quarto=0
		escreva("Enquanto você não digitar um número negativo, o programa continuará rodando. \n")	
		enquanto(num>0)	{
			escreva("Digite um número: ")
			leia(num)
			se(num>=0 e num<=25)	{
				primeiro=primeiro+1
								}
			senao se(num>25 e num<51)	{
				segundo=segundo+1
									}
				senao se(num>50 e num<76)	{
					terceiro=terceiro+1					
										}
					senao se(num>74 e num<101)			{
						quarto=quarto+1						
											}
						}
		escreva(primeiro, " números pertencem a [0, 25], ", segundo, " números pertencem a [26, 50], ", terceiro, " números pertencem a [51, 75] e ", quarto, " números pertencem a [76, 100].") 				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 480; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */