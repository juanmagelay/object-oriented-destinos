class Viaje {
	var property idiomas = []
	var property elViajeImplicaEsfuerzo = false
	var property sirveParaBroncearse = false
	var property diasDeActividad = 0
}

class ViajeALaPlaya inherits Viaje {
	const property largoPlaya

	override method diasDeActividad() {
		return largoPlaya / 500
	}
	
	override method elViajeImplicaEsfuerzo() {
		return largoPlaya > 1200
	}
	
	override method sirveParaBroncearse() {
		return true
	}
}

class ExcursionACiudad {
	const property cantAtracciones
	
	method diasDeActividad() {
		return cantAtracciones / 2
	}
	
	method esfuerzo() {
		return cantAtracciones.between(5,8)
	}

	method sirveParaBroncearse() { return false }
}

class ExcursionACiudadTropical inherits ExcursionACiudad {	
	override method diasDeActividad() {	return super() + 1	}
	override method sirveParaBroncearse() { return true }
}



