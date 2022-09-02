programa
{
	
	funcao inicio()
	{
		inteiro num1, num2
		escreva("Digite um número: ")
		leia(num1)
		escreva("Digite outro número: ")
		leia(num2)
		se(num1>num2)	{
			escreva(num1, " é maior do que ", num2)
					}
		senao	{
			se(num1==num2)	{
				escreva("Os números são iguais...")
						}
			senao	{
				escreva(num2, " é maior do que ", num1)			
					}
				}
	}
}

/*Criar um algoritmo que receba dois números e os compare. Imprima o resultado
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */