Algoritmo UsoComputadorasLab
	Definir laboratorios, filas, computadoras Como Entero
	Definir  ocupadas1, ocupadas2, libres1, libres2 Como Entero
	Definir estadodeUso Como Cadena
	Definir ocupadasgen, libresgen Como Entero
	
	laboratorios=2 // Cantidad de laboratorios a evaluar disponibilidad
	filas=5 // Cantidad de filas de computadoras por laboratorio
	computadoras=4 // Cantidad de computadoras por fila en cada laboratorio
	
	ocupadas1<-0
	ocupadas2<-0
	libres1<-0
	libres2<-0
	
	//Bienvenida al usuario 
	Escribir ("Bienvenido al algoritmo de monitoreo de computadoras en los laboratorios del campus") 
	//Bucles para cada laboratorio
	Para laboratorios Desde 1 Hasta 2 Con Paso 1
		ocupadasgen<-0
		libresgen<-0
		Escribir "Laboratorio ", laboratorios, ":"
		
		//Bucle para cada fila
		Para filas Desde 1 hasta 5 Con Paso 1
			
			//Bucle para cada computadora por fila 
			Para computadoras desde 1 hasta 4 Con Paso 1
				Escribir "¿La computadora ", computadoras, " de la fila ", filas, " del laboratorio ", laboratorios, " está ocupada o libre?, O/L:" // O representa Ocupada y L representa Libre.
				Leer estadodeUso
				estadodeUso<-Mayusculas(estadodeUso)
				//Validación de ingreso de datos correctos
				Mientras estadodeUso<>"O" Y estadodeUso<>"L"
					Escribir "Entrada no válida. Ingrese O (ocupada) o L (libre): "
					Leer estadodeUso
				FinMientras
				//Suma al contador correspondiente según estado de uso:
				Si estadodeUso = "O" Entonces
					ocupadasgen <- ocupadasgen + 1
				SiNo
					libresgen <- libresgen + 1
				FinSi
			FinPara
		FinPara
		//Guardar resultados en variables finales por laboratorio 
		Si laboratorios = 1 Entonces
			ocupadas1<-ocupadasgen
			libres1<-libresgen
			
		SiNo
			ocupadas2 <- ocupadasgen
			libres2 <- libresgen
		FinSi
		
	FinPara
	
	//Mostrar los resultados finales del programa:
	Escribir "Resumen general de estado de uso por laboratorio:"
	Escribir "Laboratorio 1 - Ocupadas: ", ocupadas1, ", Libres: ", libres1
	Escribir "Laboratorio 2 - Ocupadas: ", ocupadas2, ", Libres: ", libres2
	
	
FinAlgoritmo
