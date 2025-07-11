Algoritmo Taller_Errores
	
	Definir i, n Como Entero
    
    Definir suma, mayor_edad, menor_edad, promedio Como Real // no hacer uso de palabras reservadas como mayo o menor
    
    suma <- 0
    mayor_edad <- 0 // se cambia el nombre de las variables 
    menor_edad <- 100
	
    Escribir "Ingrese la cantidad de estudiantes:"
    Leer n  //se debe inicializar para definir el tamaño de la lista
	Dimensionar  nombres[n], edades[n]  //Los arreglos o listas se dimesiona, no se definen
	
	
    Para i = 1 Hasta n Hacer
        Escribir "Ingrese el nombre del estudiante ", i, ":"
        Leer nombres[i] //Se ubica la posicion en lista para establecer la ubicacion que va a ocupar el dato
        Escribir "Ingrese la edad del estudiante ", i, ":"
        Leer edades[i]
        suma = suma + edades[i]
        Si edades[i] > mayor_edad Entonces
            mayor_edad = edades[i]
        FinSi
        Si edades[i] < menor_edad
            menor_edad = edades[i]   // Se debe establecer la posición de la lista que ocupará el dato ingresado
        FinSi
    FinPara
	
    promedio = suma / n
	
    Escribir "El promedio de edades es: ", promedio
    Escribir "La edad mayor es: ", mayor_edad
    Escribir "La edad menor es: ", menor_edad
	
    Escribir "Listado de estudiantes mayores de edad:"
    Para i = 1 Hasta n
        Si edades[i] >= 18
            Escribir nombres[i], " - ", edades[i]
        FinSi
    FinPara
	
    Escribir "¿Desea buscar un estudiante? (si/no)"
    Leer respuesta
    Si respuesta == "si"
        Escribir "Ingrese el nombre a buscar:"
        Leer nombre_busqueda
        encontrado = falso
        Para j = 1 Hasta n
            Si nombres[j] = nombre_busqueda
                Escribir "Edad: ", edades[j]
                encontrado = verdadero
            FinSi
        FinPara
        Si encontrado = falso
            Escribir "No se encontró el estudiante."
        FinSi
    FinSi
	
    Escribir "Fin del programa."
FinAlgoritmo