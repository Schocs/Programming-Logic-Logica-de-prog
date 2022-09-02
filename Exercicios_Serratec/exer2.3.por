programa
{
	
	funcao inicio()
	{
		real num1, num2, total
		cadeia operacao
		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite a operação que deseja realizar(+, -, *, /): ")
		leia(operacao)
		escreva("Digite o segundo número: ")
		leia(num2)
		se(operacao=="+") {
			total=num1+num2
			escreva(num1, "+", num2, " = ", total)
					   }
		senao	{
				se(operacao=="-"){
					total=num1-num2
					escreva(num1, "-", num2, " = ", total)
							  }
				senao	{
					se(operacao=="*"){
						total=num1*num2
						escreva(num1, "*", num2, " = ", total)			
								  }
					senao	{
						se(operacao=="/"){
							total=num1/num2
							escreva(num1, "/", num2, " = ", total)	
									  }
						senao	{			  
						escreva("Operação inválida")		
								}
							}
						}
				}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */