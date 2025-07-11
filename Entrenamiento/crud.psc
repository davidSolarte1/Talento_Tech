Algoritmo crud
	//DECLARACIÓN DE VARIABLES
	definir n Como Entero
	Escribir 'digite el numero de usuarios a registrar'
	leer n
	Dimensionar cedula[n], nombres[n], apellidos[n], edad[n], menu[5], destinos[3]
	definir op Como Entero
	definir puede_registrar Como Caracter
	
	definir encontrado Como Caracter
	
	//Inicialización de la lista menu
	menu[1] <- "1. Registrar usuario"
	menu[2] <- "2. Actualizar usuario"
	menu[3] <- "3. Buscar usuario"
	menu[4] <- "4. Comprar tiquete"
	menu[5] <- "5. Salir"
	
	destinos[1] = '1. España'
	destinos[2] = '2. España'
	destinos[3] = '3. Ninguno'
	
	Repetir	
		//imprimir menu
		para i<-1 hasta 5 Hacer
			Imprimir menu[i]
		FinPara
		
		Imprimir "Elija la opción: "
		leer op
		
		puede_registrar = "si"
		Segun op Hacer
			1:
				Imprimir "Digite la cedula del usuario a registrar: "
				leer cedula_usuario
				
				//ciclo para --> VERIFICAR SI EL USUARIO EXISTE
				para i <- 1 hasta n Hacer
					si cedula_usuario = cedula[i] Entonces
						puede_registrar = "no"
					FinSi
				FinPara
				
				si puede_registrar = "si" Entonces
					Imprimir "Digite los nombres del usuario a registrar: "
					leer nombres_usuario
					Imprimir "Digite los apellidos del usuario a registrar: "
					leer apellidos_usuario
					Imprimir "Digite la edad del usuario a registrar: "
					leer edad_usuario
					
					//Ciclo mientras --> verificar la posicion vacia para registrar el usuario en cascada 
					para i <- 1 hasta n Hacer
						si cedula[i] = "" Entonces
							cedula[i] = cedula_usuario
							nombres[i] = nombres_usuario
							apellidos[i] = apellidos_usuario
							edad[i] = edad_usuario
						FinSi
					FinPara
					
					Imprimir ""
					imprimir "USUARIO REGISTRADO"
					Imprimir ""
					
					para i <-1 hasta n Hacer
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
					FinPara
				SiNo
					imprimir ""
					imprimir "EL USUARIO NO PUEDE REGISTRARSE"
					imprimir ""
				FinSi
				
			2:
				
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO AL CUAL SE ACTUALIZARA LOS DATOS: "
				leer cedula_usuario_mod
				
				i=1
				Mientras i <= n Hacer
					si cedula[i] = cedula_usuario_mod Entonces
						Imprimir "Digite los nuevos nombres: "
						leer nuevo_nombre
						imprimir "Digite los nuevos apellidos: "
						leer nuevos_apellidos
						imprimir "Digite la nueva edad: "
						leer nueva_edad
						
						nombres[i] = nuevo_nombre
						apellidos[i] = nuevos_apellidos
						edad[i] = nueva_edad
						encontrado = "ok"
						i=n
					FinSi
					i=i+1
				FinMientras
				
				si encontrado = "nok" Entonces
					imprimir ""
					Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
					imprimir ""
				FinSi
				
				imprimir ""
				imprimir "USUARIOS REGISTRADOS"
				para i <-1 hasta n Hacer
					imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
				FinPara
			3:
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO A BUSCAR: "
				leer cedula_usuario
				i=1
				Mientras i <= n Hacer
					si cedula_usuario = cedula[i] Entonces
						imprimir ""
						imprimir "EL USUARIO SE ENCUENTRA REGISTRADO"
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
						encontrado = "ok"
						i=n
					FinSi
					i=i+1
				FinMientras
						
				si encontrado = "nok" Entonces
					imprimir ""
					Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
					Imprimir ""
				FinSi
			4:
				encontrado = "nok"
				imprimir "Cedula del pasajero: "
				leer cedula_pasajero
				
				i = 1
				
				mientras i <= n Hacer
					
					si cedula[i] = cedula_pasajero Entonces
						encontrado = "ok"
						imprimir "DESEO VIAJAR A: "
						para j = 1 Hasta 3 Hacer
							Escribir destinos[j]
						FinPara
						
						imprimir "Cual es su opción: "
						leer opcion_viaje
						
						Segun opcion_viaje Hacer
							opcion 1:
								imprimir "El valor del tiquete es de: 1.000.000"
								imprimir ""
							opcion 2:
								imprimir "El valor del tiquete es de: 2.000.000"
								imprimir ""
							opcion 3:
								imprimir "Hasta la proxima"
								imprimir ""
							De Otro Modo:
								Escribir  'Opcion no valida'
						Fin Segun
						j = 3
					FinSi
					i =  i+1
				FinMientras
								
				
			De Otro Modo:
				mostrar "OPCIÓN INCORRECTA, ESCOJA ENTRE 1 A 5"
		Fin Segun
		
		//IMPRIMIENDO NUEVAMENTE EL MENU PARA ACTUALIZAR LA VARIABLE Op
		
	Hasta Que op == 5
	
	
FinAlgoritmo
