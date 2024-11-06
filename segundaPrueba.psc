Algoritmo sin_titulo
	
	Definir usuario, usuarioCorrecto, contraseña, contraseñaCorrecta Como Caracter
	Definir intentos Como Entero
	Definir seleccion Como Entero
	definir saldo, deposito, impuesto como real
	definir retiro como real
	definir historial Como Caracter
	Dimension historial[150]
	definir contadorHis como entero
	
	contadorHis=0
	saldo=0
	intentos = 0
	usuarioCorrecto="bryan29"
	contraseñaCorrecta="Vivasaprissa"
	
	
	Mientras intentos < 3 Hacer  
		
		Escribir "Tienes 3 intentos para ingresar el usuario y la contraseña correcta, despues de 3 intentos, el sistema se bloquea "
		Escribir "Digite el usuario"
		Leer usuario
		Escribir "Digite la contraseña"
		Leer contraseña
		
		si (mayusculas(usuario)=mayusculas(usuarioCorrecto)) y (contraseña = contraseñaCorrecta) entonces
			Escribir "Usuario y contraseña correctos"
			
			Repetir
				Escribir " Seleccione la opcion que desea realizar "
				Escribir "1. Depositar dinero"
				Escribir "2. Sacar dinero"
				Escribir "3. Ver saldo"
				Escribir "4. Salir"
				Leer seleccion 
				
				Segun seleccion Hacer
					1:
						Escribir "Has seleccionado depositar dinero, ingrese la cantidad a depositar"
						leer deposito
						
					Si deposito > 0 Entonces
						saldo=saldo+deposito
			
						Si deposito>5000 Entonces
							impuesto=deposito*0.05
							saldo=saldo-impuesto
							Escribir " ya que su deposito fue mayor a 5000 se le aplico un impuesto de 5%"
							contadorHis=contadorHis+1
							historial[contadorHis] <- "+" + ConvertirATexto(deposito)
						Fin Si
						
						escribir "Realizo un deposito de " deposito " su saldo es de " saldo
						
					Sino 
						Escribir "la cantidad debe ser mayor a 0"
					Fin Si
					
						
					2:
						Escribir "Has seleccionado retirar dinero, ingrese el monto de dinero que desea retirar"
						leer retiro
						
						Si retiro <= saldo Entonces
                            Si (retiro % 1000) == 0 Entonces
                                saldo = saldo - retiro
                                contadorHis=contadorHis+1
								historial[contadorHis] <- "-" + ConvertirATexto(retiro)
                                Escribir "Realizo un retiro de " retiro " su saldo es de " saldo
                            SiNo
                                Escribir "El monto a retirar debe ser un multiplo de 1000"
                            Fin Si
                        SiNo
                            Escribir "saldo insuficiente"
                        Fin Si
						
					3:
						Escribir "Has seleccionado ver saldo"
						Escribir "tu saldo actual es de " saldo
						Escribir "tu historial de transacciones es"
						Si contadorHis>0 Entonces
							Para i<-1 Hasta contadorHis Con Paso 1 Hacer
								escribir historial[i]
							Fin Para
						SiNo
							Escribir " No hay transacciones en el historial "
						Fin Si
					
					4:
						Escribir "Saliendo del sistema"
					De Otro Modo:
						Escribir "Seleccion no valida, ingrese nuevamente la seleccion" 
				Fin Segun
			Hasta Que seleccion = 4
			
		SiNo
			intentos = intentos + 1  
			
			Si intentos = 3 Entonces
				Escribir "Se alcanzo el maximo de intentos, acceso bloqueado"
			Fin Si
		Fin Si
	Fin Mientras
	
	
FinAlgoritmo
