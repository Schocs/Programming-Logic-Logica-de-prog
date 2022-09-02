programa
{
	
	funcao inicio()
	{
		inteiro menNum=0, maiNum=0, i=2, primo=0
		escreva("Digite o menor número do intervalo: ")
		leia(menNum)
		escreva("Digite o maior número do intervalo: ")
		leia(maiNum)
		se(menNum<2){
			escreva("2\n")
			menNum=3}
		enquanto(i!=maiNum e menNum<maiNum){
			se(menNum%i==0){
				menNum++
				i=2		}
			senao se((menNum>5)e((menNum%3==0)ou(menNum%5==0)))	{
						menNum++
						i=2	
											}
				senao {
				i++
				escreva(menNum, "\n")
					}
					
					  				}
	}
}
/*3)Faça um programa que receba um número menor e um número maior. 
 * Imprima todos os números primos existentes nesse intervalo.
 * números primos são divisíveis apenas por 1 e por ele próprio
 * fazer o intervalo é fácil, o difícil é fazer as divisões dos números. 
 * Uma ideia é usar o i a partir de 2, ir acrescendo ele de mais um até que i seja igual a maiNum
 * e com esse i ir dividindo menNum, acrescendo menNum de 1 até que menNum seja igual a maiNum
 * se a divisao de i
  */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */