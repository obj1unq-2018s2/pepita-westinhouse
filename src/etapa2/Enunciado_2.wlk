// TODO Este archivo me confunde, ¿por qué está dos veces el código? ¿tengo que mirar este o el otro?
// Por favor evitemos este tipo de confusiones.
object pepita {
	
	var energia = 0
	
	method volar(kilometros){
		energia -= 10 + kilometros
	}
	
	method comer(comida, gramos){		 
		 return energia += comida.EnergiaPorGramo() * gramos	 	              
	}
	
	method energia(){
		return energia
	}
	method esta_debil(){
		return energia < 50
	}
	method esta_feliz(){
		return energia.between(500,1000)
	}
	method cuantoQuiereVolar(){
		return 
		energia/5 + 
		if(energia.between(200,400)){return 10} else {return 0} +
		if(energia % 20 == 0){return 15} else {return 0}			
	}
	
	//rutina de alimentación de pepita
	method salirAComer(){
		if(self.energia() > 15){
			self.volar(5)
			self.comer(alpiste, 80)
			self.volar(5)
		}
	}
	
	//metodos especiales
	
	method haceLoQueQuieras(){
		
		if(self.esta_feliz()){
			self.volar(8)
		}
		else if(self.esta_debil()){
			self.comer(alpiste, 20)
		}
		else{
			energia == self.energia()
		}
		
	}
}

//Diferentes comidas

	object alpiste {
		method EnergiaPorGramo(){	
			return 4
		}
	}
	
	object alcaucil {
		method EnergiaPorGramo(){
			return 20
		}
	}
	
	object mondongo {
		method EnergiaPorGramo(){
			return 100
		}
	}
	
	object sorgo {
		method EnergiaPorGramo(){
			return 9	
		}
	}
		
//Comida Fallada

   object bigMac {
   	    method EnergiaQueOtorga(){
   	    	return 1
   	    }
   }
   
   
//Comidas Especiales

   object mijo {
   	 	var joules = 20
   		method secarse(){
   			joules = 20
   		}
   		method mojarse(){
   			joules = 15
   		}
   		method EnergiaPorGramo(){
   			return joules
   		}
   }
   
   
   
   object canelones { 	
   		var joules = 20
   		method EnergiaPorGramo(){
   			return joules
   		}
   		method ponerSalsa(){
   			if(joules == 20 || joules == 27){
   			joules += 5
   			}
   		}
   		method sacarSalsa(){
   			if(joules == 25 || joules == 32){
   				joules -= 5
   			}
   		}
   		method ponerQueso(){
   			if(joules == 20 || joules == 25){
   				joules += 7
   			}
   		}
   		method sacarQueso(){
   			if(joules == 27 || joules == 32){
   				joules -= 7
   			}
   		}
   }