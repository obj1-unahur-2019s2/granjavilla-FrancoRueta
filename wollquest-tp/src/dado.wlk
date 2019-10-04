import wollok.game.*



class Dado{
	var numeros = [1,2,3,4,5,6]
	var property position = new Position(x=0,y=0)
	var numeroDeDado
	
	method image(){
		return if  (numeroDeDado == 1){"dado1.png"}
		else if  (numeroDeDado == 2){"dado2.png"}
		else if  (numeroDeDado == 3){"dado3.png"}
		else if  (numeroDeDado == 4){"dado4.png"}
		else if  (numeroDeDado == 5){"dado5.png"}
		else {"dado6.png"}
	}
	
	method tirarDado(){
		numeroDeDado = numeros.anyOne()
	}
}
