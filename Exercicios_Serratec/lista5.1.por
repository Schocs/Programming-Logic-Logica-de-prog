programa
{
	
	funcao inicio()
	{
		inteiro num, cont1=0, cont2=0, cont3=0, cont4=0, cont5=0, cont6=0, soma=0
		real mediaPos=0.0
		cadeia desejo="s"
		enquanto(desejo=="s" ou desejo=="S")	{
			escreva("Digite um número: ")
			leia(num)
			cont3++
			se(num<35){
				cont1++
					}
			se(num>0)	{
				soma=soma+num
				cont2++
					}
			se(num>50 e num<100){
				cont4++		
							}
			se(num<50){
				cont5++
				se(num>10 e num<20)	{
					cont6++				
								}
					}
			escreva("Deseja digitar mais um número? Digite 's' para continuar, e 'n' para parar: ")
			leia(desejo)				
							}
		mediaPos=soma/cont2
		escreva("Quantidade de número inferiores a 35: ", cont1, "\n Média dos positivos: ", mediaPos, "\n % de números entre 50 e 100: ", cont4*100/cont3, "% \n % de número entre 10 e 20 entre os menores de 50: ", cont6*100/cont5, "%")				
	}
}
/*1) Faça um programa que receba vários números e que calcule e mostre:  
A quantidade de números inferiores a 35; 
A média dos números positivos;
A percentagem de números entre 50 e 100 entre todos os números digitados; contador de num entre 50 e 100 e um contador geral
A percentagem de números entre 10 e 20 entre os números menores que 50.  
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */