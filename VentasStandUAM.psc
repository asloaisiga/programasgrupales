Algoritmo VentasUAM
		Definir ventasPorProducto, resumenStand, resumenDia, totalFeria Como Real
		Definir dia, stand, producto Como Entero
		
		totalFeria <- 0
		
		//Bienvenida al usuario
		Escribir ("Bienvenido al algoritmo de registro de ventas de la Feria Estudiantil UAM")
		
		//Bucle por cada día
		Para dia <- 1 Hasta 3
			Escribir "Día ", dia
			resumenDia <- 0
			
			//Bucle por cada stand que participa en la feria
			Para stand <- 1 Hasta 4
				Escribir "  Stand ", stand
				resumenStand <- 0
				
				//Bucle por cada producto ofertado en los stands de la feria
				Para producto <- 1 Hasta 3
					Escribir "    Ingrese ventas del producto ", producto, ": "
					Leer ventasPorProducto
					resumenStand <- resumenStand + ventasPorProducto
				FinPara
				
				//Muestra el resumen de ventas por stand
				Escribir "    Total ventas del Stand ", stand, ": ", resumenStand
				resumenDia <- resumenDia + resumenStand
			FinPara
			//Muestra el resumen de ventas totales de todos los stands por cada día en la feria
			Escribir "  Total ventas del Día ", dia, ": ", resumenDia
			totalFeria <- totalFeria + resumenDia
		FinPara
		//Muestra un resumen general de ventas de todos los stands en la feria por los 3 dias realizados
		Escribir "Total general de la feria: ", totalFeria
		
FinProceso
