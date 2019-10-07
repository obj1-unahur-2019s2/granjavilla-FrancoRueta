import wollok.game.*
import cultivos.*

object hector {
	var oroAcumulado = 0
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	
	method regarPlantas(){
		game.colliders(self).forEach({planta => planta.regarPlanta()})
	}
	
	method cosechar(){
		game.colliders(self).forEach({planta => planta.cosechar()})
		}
	}