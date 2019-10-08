import wollok.game.*
import direcciones.*

object oso {
	var property position = new Position(x=3,y=7)
	var property indice = [norte,sur,este,oeste]
	
	method image() = "pjWorm.jpg"
	
	method moverEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}
	
	method movimientoAleatorio(){
		self.moverEnDireccion(indice.anyOne())
	}
	
	
	
	
}
