import Estado.*
import Alimento.*

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
	var estado;
	var historialAlimentos = new List();
	var hambriento;
	
	method Pou(_edad){
		energiaInicial = _edad * 10
		edad = _edad
		reirse = true
		luz = true
		estado = new Estado("Normal")
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

