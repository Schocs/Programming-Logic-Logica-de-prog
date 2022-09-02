programa
{
	
	funcao inicio()
	{
		inteiro cont=0, cont1=0, cont2=0, cont3=0, cont4=0, cont5=0, idade	
		enquanto(cont!=15)	{
			escreva("Digite a idade: ")
			leia(idade)
			se(idade<=15)	{
				cont1++
						}
			se(idade>15 e idade<31)	{
				cont2++			}		
			se(idade>30 e idade<46)	{
				cont3++				
								}
			se(idade>45 e idade<61)	{
				cont4++						
								}
			se(idade>=61)	{
				cont5++					
						}
												
			cont++		}
		escreva(cont, "\n")	
		escreva("Até 15 anos: ", cont1, "\n De 16 a 30 anos: ", cont2, "\n De 31 a 45 anos: ", cont3, "\n De 46 a 60: ", cont4, "\n 61+: ", cont5, "\n")
		escreva("A % de pessoas na primeira e na última faixa etária é: ", (cont1+cont5)*100/cont,"%")			
	}
}

/*2 Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
a) A quantidade de pessoas em cada faixa etária;
b) A percentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 

Até 15 anos
De 16 a 30 anos
De 31 a 45 anos
De 46 a 60 anos
Acima de 61 anos
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 272; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */