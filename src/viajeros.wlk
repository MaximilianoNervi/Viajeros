import viajes.*

class Viajero {

	var property paisDeResidencia
	var property viajes = []

	method viajar(lugarDeDestino, anioDelViaje) {
		// var viaje = new Viaje(lugar = lugarDeDestino,
		// anio = anioDelViaje)
		// self.viajes().add(viaje)
		viajes.add(new Viaje(lugar = lugarDeDestino, anio = anioDelViaje))
	}

	method enQuePaisesEstuvoEnEl(anio) { // averiguar como mostrar el lugar y no el resto
		return self.viajes().filter({ c => c.anio() == anio }).map({ c => c.lugar() })
	}

	method coincidioCon(viajero, anio) {
		var viajesDelOtro = viajero.enQuePaisesEstuvoEnEl(anio)
		return viajesDelOtro.filter({ c => self.enQuePaisesEstuvoEnEl(anio).contains(c)})
	}

}

