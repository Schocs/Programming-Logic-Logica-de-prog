programa
{
	
	funcao inicio()
	{
		real total, poupanca
		inteiro pao, broa
		escreva("Digite a quantidade de pães vendidos: ")
		leia(pao)
		escreva("Digite a quantidade de broas vendidas: ")
		leia(broa)
		total = (0.5*pao)+(5*broa)
		poupanca = total/10
		escreva("Você arrecadou ", total, " reais. Para a poupança, envie ", poupanca, " reais.")
	}
}

/*fazer um programa que calcule o total obtido por uma padaria, sabendo que o pão custa 0.5 e a broa 5. 
 * Me parece que essa questão pode até se transformar em algo bem mais complexo, um programa "caixa registradora", 
 * bem completinho, recebendo as compras do dia, registrando num ledger e depois retirando 10%
 * Mas aqui, acho que tá tranquilo
 * receber as quantidades de pães e broas
 * calcular valor total recebido
 * desse valor, separar 10%
 * 
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 45; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */