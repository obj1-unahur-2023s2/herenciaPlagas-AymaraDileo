import elementos.*

class Plaga {
	
	var property poblacion	 
	var property nivelDeDanio
	
	method transmiteEnfermedades() = poblacion > 10
	method efectoDeAtaque(){
		poblacion = poblacion * 1.10
	}
	method atacarElementoPorPlaga(unElemento,unaPlaga){
		self.efectoDeAtaque()
		unElemento.ataqueDePlaga(unaPlaga)
	}
}

class Cucharacha inherits Plaga{
	var property pesoPromedio
	
	override method nivelDeDanio() = poblacion.div(2)
	
	override method transmiteEnfermedades() = super() and pesoPromedio >= 10
	
	override method efectoDeAtaque(){
		super()
		pesoPromedio = pesoPromedio + 2
	}
		
}

class Pulga inherits Plaga{
	
	override method nivelDeDanio() = poblacion * 2
}

class Garrapata inherits Pulga{
	
	override method efectoDeAtaque(){
		poblacion = poblacion * 1.20
	}
	
}

class Mosquito inherits Plaga{
	
	override method nivelDeDanio() = poblacion
	
	override method transmiteEnfermedades() = super() and poblacion % 3 == 0
}