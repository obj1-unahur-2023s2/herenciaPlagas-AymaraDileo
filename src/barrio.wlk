import elementos.*

class Barrio{
	
	const elementos = []
	
	
	method cantidadDeElementosBuenos(){
		return elementos.count({e => e.esbueno()})
	}
	
	method cantidadDeElementosNoBuenos(){
		return elementos.count({e => not e.esbueno()})
	}
	method esCopado(){
	  return (self.cantidadDeElementosBuenos() > self.cantidadDeElementosNoBuenos())
	}
	
	
}
