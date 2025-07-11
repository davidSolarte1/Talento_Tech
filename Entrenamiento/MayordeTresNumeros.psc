Algoritmo MayordeTresNumeros
	definir num1,num2,num3 Como Entero
	Escribir 'ingrese numero 1:'
	leer num1
	Escribir 'ingrese numero 2:'
	leer num2
	Escribir 'ingrese numero 3:'
	leer num3
	si num1=num2 y num1=num3 Entonces
		Escribir 'Los numeros son iguales'
	SiNo
		si num1>num2 y num1>num3 Entonces
			Escribir num1,' es el mayor'
		sino 
			si num2>num1 y num2>num3 Entonces
				Escribir num2,' es el mayor'
			sino 
				Escribir num3,' es el mayor'
			FinSi
		FinSi
	FinSi
	
	
FinAlgoritmo
