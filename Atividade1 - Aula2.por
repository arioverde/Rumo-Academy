programa
{
	inclua biblioteca Matematica --> mat
	
	inteiro kmInicial, kmFinal, combustivelDisponivel, opcao
	real combustivelConsumido, consumoMedio, distanciaMaxima

	
	
	funcao inicio()
	{
		menu()		
	}

	funcao menu()
	{
		limpa()
		escreva("===== CÁLCULO DE CONSUMO MÉDIO E AUTONOMIA VEICULAR =====\n\n")
		escreva("Escolha o cálculo desejado:\n\n")
		escreva("1 - Consumo médio\n")
		escreva("2 - Autonomia\n")
		escreva("3 - SAIR\n\n")
		escreva("Opção: ")
		leia(opcao)
		
		se(opcao == 1)
		{
			consumo()	
		}
		se(opcao == 2)
		{
			autonomia()
		}
		
		senao se (opcao == 3)
		{
			retorne
		}
	}
	
	funcao consumo()
	{
		limpa()
		
		escreva("======== CALCULO DO CONSUMO MÉDIO ========\n\n")	
		
		escreva("Informe a kilometragem com o tanque cheio: ")
		leia(kmInicial)
		
		escreva("Informe a kilometragem com meio tanque: ")
		leia(kmFinal)
		
		escreva("Após completar o tanque, informe quantidade abastecida: ")
		leia(combustivelConsumido)
		
		consumoMedio = (kmFinal - kmInicial) / combustivelConsumido
		escreva("O consumo médio do veículo é " + mat.arredondar(consumoMedio, 1) + " Km/L\n\n")	
			
	}

	funcao autonomia()
	{
		limpa()
		
		escreva("======== CALCULO DA AUTONOMIA ========\n\n")
		escreva("Informe a quantidade de combustível disponível: ")
		leia(combustivelDisponivel)
		escreva("Informe o consumo médio (Km/L): ")
		leia(consumoMedio)
		distanciaMaxima = consumoMedio * combustivelDisponivel
		escreva("Distância máxima a percorrer: " + distanciaMaxima + " Km\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1146; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */