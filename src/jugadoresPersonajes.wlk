import cosas.*
import armas.*

object luisa {
    var personajeActivo
    
    method personajeActivo(personaje) {
   	 personajeActivo = personaje
    }
    
    method personajeActivo() = personajeActivo
    
    method aparece(elemento) {
   	 personajeActivo.encontrar(elemento)
    }
    
}


object floki {
    var arma = ballesta
    
    method cambiarArma(unArma) {
   	 arma = unArma
    }
    
    method encontrar(elemento) {
   	 if (arma.estaCargada()) {
   		 elemento.recibirAtaque(arma.nivelDePotencia())
   		 arma.usar()
   	 }
    }
    
}


object mario {
    var valorRecolectado = 0
    var ultimoElementoEncontrado
    
    method valorRecolectado() = valorRecolectado

    method encontrar(elemento) {
   	 ultimoElementoEncontrado = elemento
   	 valorRecolectado += elemento.otorgarValor()
   	 elemento.recibirTrabajo()
    }
    
    method estaFeliz() = valorRecolectado >= 50 or
   					  ultimoElementoEncontrado.altura() >= 10
}
