import wollok.game.*

class Maiz {
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "corn_baby.png"
	}
	
	method plantarMaiz(){
		//game.addVisual(new Maiz(position=self.position()))
	}
	
	method regarPlanta(){
		game.colliders(self)
	}
}




//-------wollquest---------

class Dado{
	var numeros = [1,2,3,4,5,6]
	var position = game.origin()
	}
	
	method tirarDado(){
		return numeros.anyOne()
	}
}






