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
		var plataAGanar = plantasCosechadas.map({planta => planta.valorDePlanta()}).sum()
		
		if (game.colliders(self).any({obj => obj.esMercado()})){
			if(not self.plantasCosechadas().isEmpty()){
		oroAcumulado = plataAGanar
		plantasCosechadas = []
		}
		else {game.say(self,"no tengo nada para vender")}
		}
		else {game.say(self,"no estoy en un mercado")}
	}
}


class Mercado{
	var property position = new Position(x=0,y=0)
	var property image = "market.png"
	var property cantidadMonedas = 0
	var property mercaderiaParaVender = []
	var property esMercado = true
	
	
}





