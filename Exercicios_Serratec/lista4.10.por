programa
{
	
	funcao inicio()
	{
		inteiro num, fact, num2
		escreva("Digite um número: ")
		leia(num)
		escreva(num, "X")
		para(inteiro x=num-1; x>1; x--)	{
			escreva(x, "X")
			num=num*x	  
									}
		escreva("1=", num)	
		escreva("\n----------**----------\n")
		escreva("Digite um numero: ")
		leia(num2)
		fact = fatorial(num2)
		escreva(fact)					
	}

	funcao inteiro fatorial(inteiro x)		{
		se(x==0)	{
			retorne 1
				}
		senao	{
			retorne x*(fatorial(x-1))
				}		
									}
}
/*Dá pra fazer fatorial com função recursiva, coisa linda demais. Farei aqui por para. Fiz por recursividade tbm, 
 * mas nao dá pra fazer do jeitinho que a questão queria fazer
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */