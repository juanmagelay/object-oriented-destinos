import viajes.*

class Socio {
	var property actividad = []
	var property maxActividades = 0
	method agregarActividad(unaActividad) {
		if (actividad.size() < maxActividades) {
			actividad.add(unaActividad)
		} else {
			throw "Llegó al máximo de actividades."
		}
	}
	method agregarActividades(actividades) {
		actividad.addAll(actividades)
	}
	method esAdoradorSol() {
		return actividad.all( { a => a.sirveParaBroncearse() } )
	}
	method conEsfuerzo() {
		return actividad.filter( { a => a.elViajeImplicaEsfuerzo() } )
	}	
}
