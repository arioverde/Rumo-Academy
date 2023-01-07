programa
{
	inclua biblioteca Objetos
	
	real quantidadeBiscoitos = 0.0, quantidadeSorvetes = 0.0
	
	funcao inicio()
	{
		// chamei uma funcao que pergunta os valores
		perguntarValores()
		
		logico isValido = validarEntradas()
		se(isValido == falso){			
			retorne
		}
		
		fazerCalculoExibir()
	}

	// entre esses {} serão executados as linha de codigo dentro quando chamado em
	// algum local
	//essa funcao aqui nao tem retorno, ela apenas coloca as váriaveis fora do escopo
	// da funcao que foi chamada
	// já que essas duas váriaveis pertercem ao programa e nao a funcao
	funcao perguntarValores(){
		escreva("***Programa para soma de estoque***\n")
		escreva("\nDigite quantos produtos você tem no estoque de biscoitos: ")
		leia(quantidadeBiscoitos)
		escreva("\nDigite quantos produtos você tem no estoque de sorvete: ")
		leia(quantidadeSorvetes)
	}

// essa funcao retornar um tipo de retorno
// do tipo que so pode ser verdadeiro ou falso
	funcao logico validarEntradas()
	{
		// alguns operadores
		// > maior que
		// < menor que
		// == igual a algo
		// != diferente de algo

		// -15
		//quantidadeSorvetes < 0 => true
		//quantidadeSorvetes > 0 => false

		// se quantidade de biscoitos e menor que zero
		// executa esse trecho que está entre {} e retorna falso
		// retornar cancela a execucao das instrucoes seguintes
		// ou seja, as linhas abaixo, não serão executadas
		se(quantidadeBiscoitos < 0)
		{
		 	escreva("\nQuantidade de biscoitos não pode ser negativa! ")
		 	retorne falso
		}
		// se a condicao lá de cima nao for verdadeira, ele nem entra aqui em baixo
		// nao entra no senao se
		senao se(quantidadeSorvetes < 0)
		{
			escreva("\nQuantidade de sorvetes não pode ser negativa! ")
			retorne falso
		}
		// se as condicoes acima não forem verdadeiras, vai entrar aqui
		// so pode existir um senao para cada instrucao de se
		senao
		{
			retorne verdadeiro
		}
	}

	funcao fazerCalculoExibir(){
		real total = quantidadeBiscoitos + quantidadeSorvetes
		escreva("\nO total de produtos no estoque: " + total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1877; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */