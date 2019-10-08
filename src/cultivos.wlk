import wollok.game.*
import hector.*

class Maiz {
	var property position = new Position(x=0,y=0)
	var esAdulta = false
	var property valorDePlanta = 150
	
	method image() {
		return if (esAdulta){"corn_adult.png"}
		else {"corn_baby.png"}
	}
	
	method plantarMaiz(){
		game.addVisual(new Maiz(position = hector.position()))
	}
	
	method regarPlanta(){
		if (not esAdulta){esAdulta = true}
	}
	
	method cosechar(){
		if (esAdulta) {game.removeVisual(self)
			hector.plantasCosechadas().add(self)
		}
		else {}
	}
}

class Trigo {
	var property position = new Position(x=0,y=0)
	var etapaEvolucion = 0
	var property valorDePlanta = etapaEvolucion - 1 * 100
	
	method plantarTrigo(){
		game.addVisual(new Trigo(position = hector.position()))
	}
	
	method regarPlanta(){
		if (etapaEvolucion < 3){etapaEvolucion ++}
		else {etapaEvolucion = 0}
		}
	
	method image() {
		return if(etapaEvolucion == 0){"wheat_0.png"}
		else if (etapaEvolucion == 1) {"wheat_1.png"}
		else if (etapaEvolucion == 2) {"wheat_2.png"}
		else {"wheat_3.png"}
	}
	
	method cosechar(){
		if (etapaEvolucion >= 2 ){
			game.removeVisual(self)
			hector.plantasCosechadas().add(self)
		}
	}
	
	}


class Tomaco {
	var property position = new Position(x=0,y=0)
	var property valorDePlanta = 80
	
	
	method image() {return "tomaco_baby.png"}
	
	method plantarTomaco(){
		game.addVisual(new Tomaco(position = hector.position()))
	}
	
	method regarPlanta(){
		self.position(self.position().up(1))
	}
	
	method cosechar(){
		game.removeVisual(self)
		hector.plantasCosechadas().add(self)
	}
	
	
	
}




