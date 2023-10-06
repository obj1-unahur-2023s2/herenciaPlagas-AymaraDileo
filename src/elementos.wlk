import plagas.*

class Elemento{
	var property esBueno 
}

class Hogar inherits Elemento {
	
	var property nivelDeMugre
	var property confort
	
	override method esBueno()= (confort.div(2) >= nivelDeMugre)
	
	method ataqueDePlaga(plaga){
		 nivelDeMugre = plaga.nivelDeDanio() 
	 }
}  


class Huerta inherits Elemento{
	
	var property capacidadDeProduccion
	
	override method esBueno()= capacidadDeProduccion > nivelDeProduccion.valorDelNivel() // que paso aca
	
	method ataqueDePlaga(plaga){
		 capacidadDeProduccion = plaga.nivelDeDanio() * 0.90
		 if (plaga.transmiteEnfermedades()){
		 	capacidadDeProduccion = capacidadDeProduccion - 10
		 }
	 }

}

class Mascota inherits Elemento{
	 
	 var property nivelDeSalud
	 
	 method esMasSaludable() = nivelDeSalud > nivelBaseDeSalud.nivelBase()
	 
	 override method esBueno() = nivelDeSalud > 250
	 
	 method ataqueDePlaga(plaga){
		 if (plaga.transmiteEnfermedades()){
		 	nivelDeSalud = nivelDeSalud - plaga.nivelDeDanio() 
	 }
}  

}

object nivelBaseDeSalud{
	var property nivelBase = 100
}



object nivelDeProduccion {
	var property valorDelNivel = 100
}