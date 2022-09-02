programa
{
	
	funcao inicio()
	{
		inteiro idade
		cadeia nome
		escreva("Digite o nome do jogador: ")
		leia(nome)
		escreva("Digite a idade do jogador: ")
		leia(idade)
		se(idade<10){
			escreva(nome, ", ", idade, ", Escolinha")
				  }
		senao {
			se(idade>9 e idade<18){
				escreva(nome, ", ", idade, ", Base")		  
							   }
			senao {
				se(idade>17 e idade<41){
					escreva(nome, ", ", idade, ", Profissional")					   
								   }
				senao	{
					escreva(nome, ", ", idade, ", Master")				   
						}
				 }
			 }
	}
}

/*Acho que dá pra trabalhar com caso aqui, se fizer um esforcinho. Vou tentar
 * Construir um algoritmo que receba nome e idade, categorize o jogador entre 4 opções(master, pro, base, escolinha)
 * Imprime da seguinte maneira: Nome, Idade, Categoria;
 * Plano: 
 * Primeiramente, receber nome e idade
 * Comparar a idade com os intervalos de idade
 * <10
 * 10-17	18-40
 * 40>
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */