object alimento {
	var nombre;
	var tipo;
	
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

object estado {
	var tipo;
	
	method setTipo(_tipo){
		tipo = _tipo
	}
	
	method getTipo(){
		return tipo
	}
	
	method Estado(){
		tipo = "Normal"
	}	
}
object pou {
	var reirse;
	var energia;
	var energiaInicial;
	var luz;
	var comio;
	var jugo;
	var banio;
	var durmio;
	var edad;
	var estadoDeAnimo;
	var historialAlimentos = new List();
	var hambriento;
	
	method Pou(_edad){
		energiaInicial = _edad * 10
		edad = _edad
		reirse = true
		luz = true
		estadoDeAnimo = estado.getTipo()
	}
	
	method comer(alimento){
		if (hambriento){
			reirse = true
		}
		
		if (alimento.getTipo() == "fruta" || alimento.getTipo() == "verdura"){
			energia = energia + 1
		}
		
		if (alimento.getTipo() == "bebidas"){
			energia = energia + 0.5
		}
		
		if (alimento.getTipo() == "frituras"){
			energia = energia - 0.2
		}
		comio = true
		historialAlimentos.add(alimento)
	}
	
	method baniarse(){
		if (comio && jugo){
			reirse = false
			energia = energia - 2
			banio = true
		}
	}
	
	method jugar() {
		reirse = true
		jugo = true
		hambriento = true
	}
	
	method energizarse(){
		if (estado.getTipo() == "Alegre" && energia < energiaInicial){
			energia = energiaInicial
		}
	}
	
	method dormir(){
		luz = false
		durmio = true
	}
	
	method salud(){
		
	}	
}


