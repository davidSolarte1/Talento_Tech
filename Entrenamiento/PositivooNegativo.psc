Algoritmo PositivooNegativo
	Definir n,num, pos, neg, neu Como entero	
	pos=0
	neg=0
	neu=0
	Escribir 'digite cuantos numeros quiere ingresar'
	leer n
	para i=1 Hasta n Con Paso 1 Hacer
		Escribir 'ingrese el numero ',i,':'
		leer num
			si num > 0 Entonces
				Escribir 'el numero es positivo'
				pos=pos+1
			SiNo
				si num<0 Entonces
					Escribir 'el numero es negativo'
					neg=neg+1
				SiNo
					Escribir 'el numero es neutro'
					neu=neu+1
				FinSi
			FinSi
		FinPara
		Escribir 'tiene ',pos,' numeros positivos'
		Escribir 'tiene ',neg,' numeros negativos'
		Escribir 'tiene ',neu,' neutros'
FinAlgoritmo
