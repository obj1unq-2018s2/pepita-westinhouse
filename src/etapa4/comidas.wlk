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