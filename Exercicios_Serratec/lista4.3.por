programa
{
	
	funcao inicio()
	{	
		real num, soma=0.0, media=0.0, total=0.0 
		inteiro x=1, positivo=0, negativo=0
		enquanto(x>0)	{
			escreva("Digite o valor que deseja adicionar à média: ")
			leia(num)
			total=total+1
			soma=soma+num
			se(num<0)	{
				negativo=negativo+1
					}
			senao	{
				positivo=positivo+1		
					}
			media=soma/total		
			escreva("Para adicionar outro número, digite 1. Caso não queira adicionar outro número, digite 0 ")
			leia(x)
					}
			escreva("Média: ", media,"\n", "Quantidade de positivos: ", positivo, "\n", "Quantidade de negativos: ", negativo, "\n","Porcentagem positivo: ", (positivo*100)/total, "%","\n", "Porcentagem de negativos: ", (negativo*100)/total, "%")			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 458; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */