Algoritmo ParoImpar
	Definir n Como Entero
	Definir num Como Entero
	definir pares Como Entero
	pares = 0
	definir impares Como Entero
	impares=0
	Escribir "ingrese la cantidad de numeros a ingresar: "
	leer n
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "ingrese numero: ", i
		leer num
		Si num%2=0 Entonces
			pares=pares+1
		SiNo
			impares=impares+1
		Fin Si
	Fin Para
	Escribir 'hay ', pares , ' numeros pares y ', impares, ' numeros impares'
FinAlgoritmo
