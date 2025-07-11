Algoritmo busqueda_secuencial 
	definir n Como Entero
	escribir 'defina el numero de items en la lista'
	leer n
	Dimensionar l1[n]
	definir valor_buscar Como Entero
	definir encontrado Como Caracter
	encontrado = 'nok'
	i=1
	Mientras i<=n Hacer
		l1[i] = Aleatorio(1,30)
		escribir l1[i]
		i=i+1
	FinMientras
	
	
	Imprimir 'digite el numero a buscar:'
	Leer valor_buscar  
	
	//ciclo para --> recorer l1 y verificar si el valor a buscar se encuentra entre los elementos
	Para cada i de l1 Hacer
		si i=valor_buscar Entonces
			encontrado = 'ok'
			
		FinSi
	FinPara
	
	//condicional para ver si se encuentra el valor en la lista
	si encontrado = 'ok' entonces 
		Escribir 'si existe dentro de la lista'
	sino 
		Escribir 'no existe dentro de la lista'
	FinSi
	
FinAlgoritmo
