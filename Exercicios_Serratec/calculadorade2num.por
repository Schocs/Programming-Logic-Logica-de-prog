programa
{
	inteiro num1, num2
	funcao inicio()
	{	inteiro entradaEscolhaCaso, cont=0
		cadeia operacao
		escreva("\n \t ====================Bem vindo à calculadora de 2 números!====================")
		escreva("\n \t Para realizar uma soma, digite 1; \t \t Para realizar uma subtração, digite 2; \n \t Para realizar uma multiplicação, digite 3; \t Para realizar uma divisão, digite 4: ")
		leia(entradaEscolhaCaso)
		escolha(entradaEscolhaCaso)	{
			caso 1: 
				soma()
				pare
			caso 2:
				sub()
				pare
			caso 3:
				mult()
				pare
			caso 4: 
				divi()
				pare
			caso contrario:
				escreva("\t ====================Número inválido!====================")
				cont++
				pare		
				}
			se(cont!=0){
			escreva("\n \t Deseja realizar outra operação? Digite 's' para sim, 'n' para não: ")
			leia(operacao)
			se(operacao=="s" ou operacao=="S"){
				inicio()
			}
			senao	{
				limpa()
				escreva("\t ==================Obrigado por utilizar a calculadora de 2 números!==================")
				}		
			}
	}

	funcao soma(){
		inteiro  resultado
		escreva("Digite um número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)
		resultado = num1+num2
		escreva(resultado, "\n")
	}

	funcao sub(){
		inteiro resultado
		escreva("Digite um número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)
		resultado = num1-num2
		escreva(resultado, "\n")
	}
	funcao mult(){
		inteiro resultado
		escreva("Digite um número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)
		resultado = num1*num2
		escreva(resultado, "\n")
	}
	funcao divi(){
		real resultado
		escreva("Digite um dividendo: ")
		leia(num1)
		escreva("Digite o divisor: ")
		leia(num2)
		resultado = num1/num2
		escreva(resultado, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 902; 
 * @DOBRAMENTO-CODIGO = [40, 50, 59, 68];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */