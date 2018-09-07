object gimenez {

	var sueldo = 15000
	var sueldoAcumulado = 0

	// TODO Debería usar la variable sueldo, por esto falla el test.
	method sueldo() {
		return 15000
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		sueldoAcumulado += self.sueldo()
	}

	method totalCobrado() {
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

	method cobrarSueldo() {
		return self.sueldo()
	}

	// TODO Esto no es necesario, ¿quién le manda este mensaje a baigorria?
	method totalCobrado() {
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

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

	method sueldo() {
		return sueldo
	}

	method gastar(cuanto) {
		if (dinero > cuanto) dinero -= cuanto else {
			deuda += cuanto - dinero
			// TODO Es innecesariamente complejo hacer una cuenta cuando sólo querés asignar dinero = 0
			dinero -= dinero
		}
	}

	method cobrar() {
		if (sueldo > deuda) {
			dinero += sueldo - deuda
			// Mejor "deuda = 0" y listo.
			deuda -= deuda
		} else {
			deuda -= sueldo
		}
	}

	method totalDeuda() {
		return deuda
	}

	method totalDinero() {
		return dinero
	}

}

