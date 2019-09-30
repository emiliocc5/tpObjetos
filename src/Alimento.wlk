class Alimento {
	var nombre;
	var tipo;
	
	constructor(_nombre, _tipo){
		nombre = _nombre
		tipo = _tipo
	}
	
	method setNombre(_nombre){
		nombre = _nombre		
	}
	method getNombre() {
		return nombre
	}
	
	method setTipo(_tipo){
		tipo = _tipo		
	}
	method getTipo() {
		return tipo
	}
}
