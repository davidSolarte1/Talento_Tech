Algoritmo Palindromo
	definir palabra, palabra_alreves Como Cadena
	definir i Como entero
	palabra = ''
	Escribir 'ingrese una palabra'
	leer palabra
	palabra_alreves = ''
	
	i=Longitud(palabra)
	Mientras i>0 Hacer
		palabra_alreves= palabra_alreves + Subcadena(palabra, i, i)
		i = i-1
	Fin Mientras
		
	Mostrar 'con ciclo while: ', palabra_alreves
	si palabra_alreves=palabra Entonces
		Escribir 'La palabra es palindromo'
	SiNo
		Escribir 'la palabra no es palindromo'
	FinSi
	
	palabra_alreves=''
	//
	para i=Longitud(palabra) Hasta 1  Con Paso -1 Hacer
		palabra_alreves= palabra_alreves + Subcadena(palabra, i, i)
	FinPara
	Mostrar 'con ciclo para: ', palabra_alreves
	si palabra_alreves=palabra Entonces
		Escribir 'La palabra es palindromo'
	SiNo
		Escribir 'la palabra no es palindromo'
	FinSi
FinAlgoritmo
