import wollok.game.*
import cultivos.*

object hector {
	var property plantasCosechadas = []
	var property oroAcumulado = 0
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	
	method regarPlantas(){
		if (game.colliders(self).isEmpty())
		{game.say(self,"no hay nada para regar")}
		else{game.colliders(self).forEach({planta => planta.regarPlanta()})}
	}
	
	method cosechar(){
		if (not game.colliders(self).isEmpty()){
		game.colliders(self).forEach({planta => planta.cosechar()})
		}
		else {game.say(self,"no hay nada para cosechar")}
		}
		
	method venderPlantas(){
		var plataGanada = plantasCosechadas.map({planta => planta.valorDePlanta()}).sum()
		oroAcumulado = plataGanada
		plantasCosechadas = []
		
	}
	
	
	
}