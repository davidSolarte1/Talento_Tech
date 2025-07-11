Algoritmo ordenamiento_burbuja
	definir n,aux como entero
	
	imprimir 'ingrese el tamaño de la lista'
	leer n
	
	Dimensionar l1[n]
	
	//asignando valores a la lista  l1
	
	i=1
	Mientras i<=n Hacer
		l1[i] = Aleatorio(1,30)
		escribir l1[i]
		i=i+1
	FinMientras
	
	//realizando metodo burbuja
	para i =1 hasta n-1 Hacer
		para j=1 hasta n-1 Hacer
			si l1[j]>l1[j+1] 
				aux = l1[j]
				l1[j]=l1[j+1]
				l1[j+1]=aux
			FinSi
		FinPara
	FinPara
	
	escribir'lista ordenada'
	para i=1 hasta n Hacer
		
		escribir l1[i]
	FinPara
	
FinAlgoritmo
