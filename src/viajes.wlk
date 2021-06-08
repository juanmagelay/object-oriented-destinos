class Actividad {
	var property idiomas = []
	var property elViajeImplicaEsfuerzo = false
	var property sirveParaBroncearse = false
	var property diasDeActividad = 0	
}

class Viaje inherits Actividad {
	method agregarIdioma(unIdioma) {
		idiomas.add(unIdioma)
	}
	method esInteresante() { return idiomas.size() >= 2 }
}

class ViajeALaPlaya inherits Viaje {
	const property largoPlaya
	override method diasDeActividad() {	return largoPlaya / 500	}
	override method elViajeImplicaEsfuerzo() { return largoPlaya > 1200	}
	override method sirveParaBroncearse() {	return true	}
}

class ExcursionACiudad inherits Viaje {
	const property cantAtracciones
	override method diasDeActividad() {	return cantAtracciones / 2 }
	override method elViajeImplicaEsfuerzo() { return cantAtracciones.between(5,8) }
	override method sirveParaBroncearse() { return false }
	override method esInteresante() { return super() or cantAtracciones == 5}
}

class ExcursionACiudadTropical inherits ExcursionACiudad {	
	override method diasDeActividad() {	return super() + 1	}
	override method sirveParaBroncearse() { return true }
}

class Trekking inherits Viaje {
	var property kms
	var property diasDeSol
	
	override method diasDeActividad() {	return kms / 50 }
	override method elViajeImplicaEsfuerzo() { return kms > 80 }
	override method sirveParaBroncearse() { 
		return 
			diasDeSol > 200 or 
			(diasDeSol.between(100,200) and kms > 120)
	}
	override method esInteresante() { return super() and diasDeSol > 140 }
}

class Gimnasia inherits Actividad {
	override method idiomas() { return ["Español"]}
	override method diasDeActividad() {	return 1 }
	override method elViajeImplicaEsfuerzo() { return true }
	override method sirveParaBroncearse() { return false }
}



