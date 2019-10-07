import dado.*
import wollok.game.*


object characterWorm{
	var property position = new Position(x=0,y=0)
	
	method image(){
		return "pjWorm.png"
	}
}

object ataquesDeWorm{
	var property position = new Position(x=0,y=0)
	
	method image(){}//hay que diseñar una imagen de 5x3 casillas (250 x 150 pixels)
	
	method ataquePar(dado1,dado2){
		if (dado1.numeroDeDado().even() and dado2.numeroDeDado().even()){
			
		}
	}
	
}

object enemigoTest{
	var property position = new Position(x=0,y=0)
	var vida = 25
	
	method image(){return "enemy_1.png"}
	
	method recibirDanio(danio){
		vida -= danio
	}
}
