programa
{
	inteiro num1=0, num2=0, testador=0, totalNumeros=0
	funcao inicio()
	{
		inteiro resto=0, cont=0
		escreva("Digite o menor número do intervalo: ")
		leia(num1)
		escreva("Digite o maior número do intervalo: ")
		leia(num2)
		testador=num2/2
		totalNumeros=num2-num1+1
		enquanto(num2>num1){
			para(totalNumeros; totalNumeros>0; totalNumeros--){
				se(num2%testador==0){
					cont++
					testador--			
			}
					}
			se(cont<=2) {
				escreva(num2)		
			}
			num2--
			testador=num2/2
			cont=0
		}
	}
}

/*
 * - usuário digita 2 números, especificamente um menor e outro maior após;
 * - esses dois números são os limites de inferior e superior de um intervalos;
 * - Precisamos pegar todos os números desses intervalos: totalNumero = maior - menor + 1;
 * - Para saber se um número X é primo eu preciso dividí-lo por todos os números anteriores a X/2(inclusive), uma vez que 
 * o maior divisor inteiro possível de uma divisão entre dois naturais é justamente dividendo/2;
 * - Um número X vai ser primo se, e somente se, seus divisores são apenas X e 1. Um número Y é divisor de X se 
 * o resto da divisão de X por Y é 0;
 * - Passo a passo:
 * 1- Usuario precisa digitar 2 numeros e programa precisa lê-los
 * 2- Com esses dois números, obter os restos das divisões do maior número(X) não testado por X/2 até que X/2 seja  
 * 2(inclusive), o que pode ser feito com enquanto ou para;
 * 3- Se um desses restos for 0, então o numero não é primo. Senao, X precisa ser printado na tela apenas 1 vez.
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */