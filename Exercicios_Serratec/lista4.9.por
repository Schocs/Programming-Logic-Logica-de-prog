programa
{
	
	funcao inicio()
	{
		inteiro A, R
		escreva("Digite o número de começo da P.G: ")
		leia(A)
		escreva("Digite a razão da P.G: ")
		leia(R)
		escreva("Valor inicial:", A, ". P.G abaixo: ", "\n")
		para(inteiro x=0; x<10; x++)	{
			escreva(A*R, "\n")
			A=A*R
								}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */