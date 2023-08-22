import comidas.*

object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
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
	
	method comer(comida){
		if (comida.nombre() == "fideos") {
			peso += 250
			tieneSed = true	
		}
	}
	
	method correr(){
		peso -= 300
	}
	
	method verNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto() = esFeliz and !tieneSed and peso.between(50000,70000)
	
	method mediodiaEnCasa(){
		self.comer(fideos)
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var nivelContractura
	var pielGrasosa
	
	method recibirMasajes(){
		nivelContractura = 0.max(nivelContractura - 2)
	}
	
	method darBanioDeVapor(){
		pielGrasosa = false
	}
	
	method comer(comida){
		if (comida.nombre() == "bigmac") {
			pielGrasosa = true
		}
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
		self.comer(bigmac)
		self.bajarALaFosa()
	}
}

object spa {
	
	method atender(persona){
		persona.recibirMasajes()
		persona.darBanioDeVapor()	
	}
}
