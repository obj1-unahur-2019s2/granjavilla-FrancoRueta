import wollok.game.*
import hector.*
import cultivos.*
import oso.*
import direcciones.*
//-------------------------//

object juegoGranjavilla {
	var personajeActual = hector
	
	
	method configurarTeclado(){
	keyboard.z().onPressDo({new Maiz().plantarMaiz()})
	keyboard.x().onPressDo({new Trigo().plantarTrigo()})
	keyboard.c().onPressDo({new Tomaco().plantarTomaco()})
	keyboard.q().onPressDo({hector.regarPlantas()})
	keyboard.w().onPressDo({hector.cosechar()})
	keyboard.r().onPressDo({hector.venderPlantas()})
		
	}
	
	method configurarVisuales(){
 	game.addVisual(hector)
 	game.addVisual(oso)
	}
	
	method configurarMovimientos(){
		keyboard.up().onPressDo({
			if (personajeActual.position().y() < game.height() - 1){
				personajeActual.position(personajeActual.position().up(1))
			}
		})
		
		keyboard.down().onPressDo({
			if (personajeActual.position().y() > 0){
				personajeActual.position(personajeActual.position().down(1))
			}
		})
		
		keyboard.left().onPressDo({
			if (personajeActual.position().x() > 0){
				personajeActual.position(personajeActual.position().left(1))
			}
		})
		
		keyboard.right().onPressDo({
			if (personajeActual.position().x() < game.width() - 1){
				personajeActual.position(personajeActual.position().right(1))
			}
		})
		
	}
	
	method configurarAcciones(){
		game.onTick(1000, "movimientoOso", {oso.movimientoAleatorio()})
	}
	
	

}