import comidas.*

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