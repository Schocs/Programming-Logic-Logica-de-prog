	programa
	{
		
		funcao inicio()
		{
			inteiro impar=0, num=1, soma=0
			real media, mediaPar, somaPar=0.0, total=0.0, par=0.0
			escreva("Enquanto você não digitar 0, o programa continuará rodando. \n")	
			enquanto(num>0)	{
				escreva("Digite um número positivo: ")
				leia(num)
				total++
				soma=num+soma
				se((num%2 == 0) e (num!=0))		{
					par=par+1
					somaPar=num+somaPar
								}
				se(num%2 == 1){
					impar=impar+1
						    }	
							}
			media=soma/total
			mediaPar=somaPar/par
			escreva(impar, " números ímpares, ", par, " números pares. ", media, " é o valor médio geral, ", mediaPar, " é a média dos pares.") 
			
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 133; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */