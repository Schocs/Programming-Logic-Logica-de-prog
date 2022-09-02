programa
{
	
	funcao inicio()
	{
		inteiro idade, quantidade, maior=0, menor=0
		escreva("Digite a quantidade de pessoas: ")
		leia(quantidade)
		para(inteiro contador=0; contador<quantidade; contador++)	{
			escreva("Digite a idade: ")
			leia(idade)
			limpa()
			se(idade>=18)	{
				maior++
						}
			senao	{
				menor++					
					}
														}
		escreva("Das ", quantidade, " pessoas, ", maior, " são maiores de idade, ", menor, " são menores")														
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 267; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */