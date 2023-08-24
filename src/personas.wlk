object olivia {
	var gradoDeConcentracion = 6
	
	/* GETTERS ************************/
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	/************************************/
	
	method recibirMasajes(){
		gradoDeConcentracion += 3
	}
	
	method darBanioDeVapor(){}
	
	method discutir(){
		gradoDeConcentracion -= 1
	}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	/* GETTERS ************************/
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	/*********************************/
	
	method recibirMasajes(){
		esFeliz = true
	}
	
	method darBanioDeVapor(){
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso += 250
		tieneSed = true	
	}
	
	method correr(){
		peso -= 300
	}
	
	method verNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto() = esFeliz and not tieneSed and peso.between(50000,70000)
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var nivelContractura = 0
	var pielGrasosa
	
	method recibirMasajes(){
		nivelContractura = 0.max(nivelContractura - 2)
	}
	
	method darBanioDeVapor(){
		pielGrasosa = false
	}
	
	method comerBigmac(){
		pielGrasosa = true
	}
	
	method bajarALaFosa() {
		pielGrasosa = true
		nivelContractura += 1
	}
	
	method juegarAlPaddle() {
		nivelContractura += 3
	}
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigmac()
		self.bajarALaFosa()
	}
}

object spa {
	
	method atender(persona){
		persona.recibirMasajes()
		persona.darBanioDeVapor()	
	}
}
