import wollok.game.*



class Dado{
	var numeros = [1,2,3,4,5,6]
	var property position = new Position(x=0,y=0)
	var property numeroDeDado
	
	method image(){
		return "dado" + numeroDeDado + ".png"
	}
	
	method tirarDado(){
		numeroDeDado = numeros.anyOne()
	}
}
