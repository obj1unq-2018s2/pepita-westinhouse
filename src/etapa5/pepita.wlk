import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object patagonia {
	method energiaExtra(){
		return 30
	}
} 

object sierrasCordobesas{
	method energiaExtra(){
		return 70
	}
}
object marDelPlata {	
/*
 *  La energía revitalizadora que aporta depende de si se trata de temporada alta o baja.
 *  En temporada baja aporta 80 joules, mientras que en alta resta 20 joules.
 *  TIP: se puede pensar que en temporada alta la energía que aporta es -20.
 *  Cosas para pensar: 
 * ¿Quién tiene la responsabilidad de saber si Mar del Plata está en temporada alta o baja? 
 *  ¿Cómo se cambia de temporada?
 
 * RESPUESTAS:
 * En la solución que diseñe, hay un objeto adicional llamado "temporada". Éste cuenta con el metodo
 * "esTemporadaAlta", que devuelve un booleano indicando si es o no época de temporada alta. 
 * ( Por defecto, este valor es "true"). Tambien ofrece metodos para poder setear este valor a false 
 * en caso de que sea temporada baja.
 * Este valor se utilizará luego para el cálculo del método "energiaExtra"
 */
 

	method energiaExtra(){
		if(!temporada.esTemporadaAlta()){
			return 80
		}
		else{
			return -20
		}
	}
} 

object temporada{
	var temporadaAlta = true
	method cambiarATemporadaAlta(){
		temporadaAlta = true
	}
	method cambiarATemporadaBaja(){
		temporadaAlta = false
	}
    method esTemporadaAlta(){
    	return temporadaAlta
    }
}

object noroeste{
	
	/*Agregar entre los lugares en los que pepita puede vacacionar al Noroeste argentino.
	 *  La energia revitalizadora que aporta es el 10% de la energía del ave viajera.
     *  Cosas para pensar: 
     *  ¿Cómo sabe el noroeste la energía de pepita para aplicarle el 10%? 
     *  ¿Es necesario cambiar el mensaje? ¿Qué pasa con el resto de los lugares ya programados? 
	 
	 RESPUESTA:
	 * El objeto "Noroeste" puede saber la energía de pepita llamando al método "pepita.energia()"
	 * El numero que senala este método se usa en el calculo que retorna la energía Extra a suministrar.
	 */
	 method energiaExtra(){
	 	return pepita.energia() * 0.1
	 }
}
 
 
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method viajar(destino){
		energia += destino.energiaExtra()
	}	
}