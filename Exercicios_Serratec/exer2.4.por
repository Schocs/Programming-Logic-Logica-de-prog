programa
{
	
	funcao inicio()
	{
		inteiro idade
		cadeia nome, especial
		caracter sexo
		escreva("Olá, digite seu nome: ")
		leia(nome)
		escreva(nome, ", digite sua idade: ")
		leia(idade)
		escreva(nome, ", digite seu sexo(M, F ou O): ")
		leia(sexo)
		escreva(nome, ", digite sua condição especial(caso não possua, digite 'não'): ")
		leia(especial)
		se(idade>60){
			escreva(nome, ", por favor, utilize a fila preferencial.")
				  }
		senao	  {
			se(especial=="não" ou especial=="NÃO" ou especial=="nao" ou especial=="Nao" ou especial=="NAO"){
				escreva(nome, ", por favor, utilize a fila comum.")
							}
			senao	{				
				escreva(nome, ", por favor, utilize a fila preferencial.")		  
					}
				  }
	}
}

/*Criar um algoritmo que imprima instrução para qual fila um usuário deverá escolher. Informações para receber:
 * idade, sexo, condição especial.
 * plano: receber nome, idade, sexo, e condição especial
 * se possui condição especial -> fila preferencial
 * se possui idade > 60 -> fila preferencial
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 546; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */