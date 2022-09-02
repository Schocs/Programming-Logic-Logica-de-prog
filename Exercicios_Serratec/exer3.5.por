programa
{
	
	funcao inicio()
	{
		real altura, peso, imc
		inteiro idade
		escreva("Digite sua idade: ")
		leia(idade)
		escreva("Digite sua altura: ")
		leia(altura)
		escreva("Digite seu peso: ")
		leia(peso)
		imc=peso/(altura*altura)
		se(imc<18.5){
			escreva("Seu IMC é ", imc, ". Você está abaixo do peso normal")	
				  }
		senao	
			se(imc>18.5 e imc<25){
				escreva("Seu IMC é ", imc, ". Você está com peso normal")			  
							 }
			senao
				se(imc>=25 e imc<30){
					escreva("Seu IMC é ", imc, ". Você está com excesso de peso")				 
								}
				senao
					se(imc>29.9 e imc<35){
						escreva("Seu IMC é ", imc, ". Você está com obesidade I")				
									 }
					senao
						se(imc>34.9 e imc<40){
							escreva("Seu IMC é ", imc, ". Você está com obesidade II") 					 
										 }
						senao
							escreva("Seu IMC é ", imc, ". Você está com obesidade III")				 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 887; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */