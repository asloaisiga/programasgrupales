Algoritmo MonitoreoConsumoEnerg�tico
	Definir Edificio, Dia, Horario Como Entero
	Definir Consumo, ConsumoTotal, PromedioSemanal Como Real
	//Bienvenida al usuario
	Escribir ("Bienvenido al algoritmo de monitoreo de consumo energ�tico en edificios del campus")
	
	// El consumo de 4 edificios
	Para Edificio <- 1 Hasta 4 Con Paso 1
		Escribir "Edificio ", Edificio
		ConsumoTotal <- 0
		
		// Por cada uno de los 7 d�as
		Para Dia <- 1 Hasta 7 Con Paso 1
			Escribir "D�a ", Dia, ":"
			
			// Por cada horario: ma�ana, tarde y noche
			Para Horario <- 1 Hasta 3 Con Paso 1
				Segun Horario Hacer
					1:
						Escribir "Escriba el consumo de kilovatios del turno de la Ma�ana: "
					2:
						Escribir "Escriba el consumo de kilovatios del turno de la Tarde: "
					3:
						Escribir "Escriba el consumo de kilovatios del turno de la Noche: "
				FinSegun
				
				Leer Consumo
				ConsumoTotal <- ConsumoTotal + Consumo
			FinPara
		FinPara
		
		PromedioSemanal <- ConsumoTotal / 21  // 7 d�as * 3 horarios
		Escribir "Consumo total del edificio ", Edificio, " es: ", ConsumoTotal
		Escribir "Promedio semanal del edificio ", Edificio, " es: ", PromedioSemanal
	FinPara

FinAlgoritmo
