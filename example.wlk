/*quiero poder preguntar si ese paquete puede ser entregado por una persona en un determinado destino
	el pago del paquete puede estar pagado o no
	hay dos destinos, que sospecho que son polimorficos porque les tengo que poder mandar un mismo mensaje y que ambos lo entiendan.
	cada persona parece tener 
*/


object paquete{
	var property pagado = true
	method puedeEnviarse(destino,persona){
		return destino.restriccion(persona)
	}
}
object  puenteDeBrooklyn{
	method restriccion(persona){
	return persona.peso() < 1000
	}
}

object laMatrix{
	method restriccion(persona){
		return persona.puedeHacerLLamada()
	}
}

/* las personas mensajeras pueden ser 3 y cada una tiene sus caracteristicas y tiene que entender un mismo mensaje asi que los hago polimorficos
*/
object jeanGray{
	var property peso = 65 
	method puedeHacerLLamada(){
		return true
	}
}

object neo{
	var property credito = 0
	var property peso = 0
	method puedeHacerLLamada(){
		return self.credito() > 0
	}
}

object saraConnor{
	var property peso = 58
	var property vehiculo = moto
	method puedeHacerLLamada(){
		return false
	}
	method peso(){
		return peso + vehiculo.peso()
	}
}

object moto{
	method peso(){
		return 100
	}
}
object camion{
	var property acoplados = 1
	method peso(){
		return (500* acoplados) + 500
	}
}
