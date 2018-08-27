object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var sueldoAcumulado = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		sueldoAcumulado += self.sueldo()
	}
	method totalCobrado(){
		return sueldoAcumulado
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
		return self.sueldo()
	}
	method totalCobrado(){}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
}
}

object nuevoBaigorria {
// Corresponde al ejercicio 'Manejo fino de las finanzas de Baigorria'
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	method sueldo(){
		return sueldo
	}
	
	method gastar(cuanto){
		if (dinero > cuanto)
			dinero -= cuanto
		else {
			deuda += cuanto - dinero 
			dinero -= dinero
		}		
	}
	method cobrar(){
		if (sueldo > deuda) {
			dinero += sueldo - deuda
			deuda -= deuda
		}
		else {
			deuda -= sueldo
		}
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}
