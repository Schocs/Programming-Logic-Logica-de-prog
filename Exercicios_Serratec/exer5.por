programa
{
	
	funcao inicio()
	{
		real total_normal, total_extra, valor_normal, valor_extra, salario_anual
		cadeia nome
		valor_normal = 10
		valor_extra = 15
		escreva("Por favor, digite o nome do trabalhador em questão: ")
		leia(nome)
		escreva("Digite a quantidade de horas normais trabalhadas no ano: ")
		leia(total_normal)
		escreva("Digite a quantidade de horas extras trabalhadas no ano: ")
		leia(total_extra)
		salario_anual = (total_normal*valor_normal) + (total_extra*valor_extra)
		escreva(nome, " ganhou um salário de ", salario_anual, " ao trabalhar por ", total_normal + total_extra, " horas no ano")
	}
}

/* Algoritmo que calcule o salário total anual de um trabalhador a partir das informações:
 *  valor hora nomal: 10 reais; valor hora extra: 15 reais; o trabalhador(ou usuário desse alg)
 *  digitará as quantidades de horas, normais e extras, trabalhadas;
 *  		1-> receber a quantidade de horas normais e horas extras;
 *  		2-> atribuir esses valores a variáveis(total_normal e total_extra)
 *  		3-> equação matemática: salario_anual = total_normal*valor_normal + total_extra*valor_extra
 *  		4-> printar salario_anual
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 495; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */