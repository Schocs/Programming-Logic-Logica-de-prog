programa
{
	
	funcao inicio()
	{
		cadeia nome, disci, plina
		real x, y, m
		escreva("Olá! Por favor, insira o nome do aluno: ")
		leia(nome)
		escreva("Digite o nome da primeira disciplina cursada: ")
		leia(disci)
		escreva("Digite a 1ª nota obtida na disciplina ", disci, ' ')
		leia(x)
		escreva("Digite a 2ª nota obtida na disciplina ", disci, ' ')
		leia(y)
		m = x/2 + y/2
		escreva("A média obtida na disciplina ", disci, " pelo aluno ", nome, " é", "\n", m)
		escreva("\n" , "Digite o nome da segunda disciplina cursada: ")
		leia(plina)
		escreva("Digite a 1ª nota obtida na disciplina ", plina, ' ')
		leia(x)
		escreva("Digite a 2ª nota obtida na disciplina ", plina, ' ')
		leia(y)
		m = x/2 + y/2
		escreva("A média obtida na disciplina ", plina, " pelo aluno ", nome, " é", "\n", m)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */