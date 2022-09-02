programa
{
	
	funcao inicio()
	{
		inteiro x, y, z, comparador=0
		leia(x)
		leia(y)
		leia(z)
		se(x>y)	{
			comparador=x
				}
		senao	{
			comparador=y
				}
		se(comparador>z)	{
			comparador=comparador	
			escreva("O maior é: ", comparador, "\n")
						}
		senao {
			comparador=z
			escreva("O maior é: ", z, "\n")				
			}
		se(x<comparador)	{
			comparador=x	
						}
		senao	{
			se(y<comparador)	{
				comparador=y
							}
			senao	{
				comparador = z
					}
				}
		escreva("O menor é: ", comparador)		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 504; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */