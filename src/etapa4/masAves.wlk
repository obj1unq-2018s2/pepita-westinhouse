import comidas.*

object pepon {
	var energia = 0	
		
	method comer(cosa, cuanto) {
		energia += cosa * (1/2 * cuanto)
	}  
	method volar(kms) { 
		// TODO No es lo pedido
		energia -= 1.5 * kms
	}
	method haceLoQueQuieras() {
		self.volar(1)
	} 
}


object pipa {
	var kilometros = 0
	var gramosComida = 0
	
	method volar(kms){
		kilometros += kms
	}
	method comer(gramos){
		gramosComida += gramos
	}	
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
}   // respuesta: Porque es necesario que el método exista para poder llamarlo, independientemente de lo que haga.
