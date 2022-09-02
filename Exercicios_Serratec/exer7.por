programa
{
	
	funcao inicio()
	{
		inteiro divisor, dividendo, resto, quociente
		escreva("Digite o dividendo(número a ser dividido): ")
		leia(dividendo)
		escreva("Digite o divisor(número que dividirá): ")
		leia(divisor)
		quociente = dividendo/divisor
		resto = dividendo%divisor
		escreva("Dividendo: ", dividendo, "\n", "Divisor: ", divisor, "\n", "Resto: ", resto, "\n", "Quociente: ", quociente)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 408; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */