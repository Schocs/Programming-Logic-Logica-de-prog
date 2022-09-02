programa
{
	
	funcao inicio()
	{
		inteiro qual
		real nota=0.0, cont=0.0, soma=0.0, notas[4][4], media=0.0, somado[4]
		cadeia alunos[4], aluno
		para(inteiro j=0; j<4; j++){
			escreva("Digite o nome do aluno: ")
			leia(aluno)
			alunos[j] = aluno
			para(inteiro i=0; i<4; i++){
				escreva("Digite a nota do aluno: ", alunos[j], "\t")
				leia(nota)
				soma = nota + soma
				notas[i][j]=nota
					}
			cont++		
			somado[j]=soma		
		}
		escreva("Para o aluno 0, digite 0, para aluno 1, digite 1, para aluno 2, digite 2, para aluno 3, digite 3: ")
		leia(qual)
		media = somado[qual]/cont
		se(media>=6.0){
			escreva("Aluno ", alunos[qual]," aprovado com média: ", media)
		}
		senao{
			escreva("Aluno ", alunos[qual]," reprovado com média: ", media)
		}
	}
}
/*criar vetor de 4 notas, e vamos exibir a média
 * dois problemas aqui: cont tá somando 16, somado tá somando todas as notas continuamente
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 440; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notas, 7, 37, 5}-{somado, 7, 61, 6}-{alunos, 8, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */