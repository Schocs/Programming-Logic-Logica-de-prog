programa
{
	
	funcao inicio()
	{
		inteiro ano_nascimento, ano_futuro, resultado, dia, mes
		cadeia  nome
		ano_futuro = 2035
		escreva("Olá, por favor, digite seu nome: ")
		leia(nome)
		escreva("Ola, ", nome, "!", "\n", "Para saber sua idade em ", ano_futuro, " , digite seu ano de nascimento: ")
		leia(ano_nascimento)
		resultado = ano_futuro - ano_nascimento
		escreva("Digite o dia atual do mês(1 a 31): ")
		leia(dia)
		escreva("Digite o mês atual(1 a 12): ")
		leia(mes)
		escreva(nome, " em 2035 você terá ", resultado, " anos, se nasceu antes de ", dia, '/', mes, ", ou ", resultado - 1, " anos se nasceu após.")
		
	}
}
/*entender: criar um programa que dê a idade em um determinado ano no futuro(2035). Informações que posso usar: data de
		 * nascimento. E ano_nascimento, ano_futuro e resultado são os nomes das variáveis dadas.
 * planejar: 	1-> receber dado para ano_nascimento, atribuir valor a ano_futuro;
		 * 	2-> a partir de ano_nascimento, atribuir valor a resultado(diferença)
		 * 	problema: teria de ter um condicional que soubesse comparar datas(DD/MM/AAAA) entre si(data
		 * 	exata atual e data de nascimento, p/ estipular quanto anos de fato, já que quem nasceu
		 * 	em janeiro terá idade diferente de quem nasceu em dezembro)
		 * 	3-> printar resultado e resultado - 1 como idades possíveis
		 * 		
		 */

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */