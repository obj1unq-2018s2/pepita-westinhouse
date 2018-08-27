
object pepon {
	var energia = 0	
	
	method comer(cosa, cuanto) {
		
	}  
	method volar(kms) { 
		energia -= 1.5 * kms
	}
	method haceLoQueQuieras() {
		self.volar(1)
	} 
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
}
