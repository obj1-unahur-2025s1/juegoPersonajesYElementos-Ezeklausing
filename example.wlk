object luisa {

  var personajeActivo = floki
  method personajeActivo(personaje) {
    personajeActivo = personaje
  }
  method personajeActivo() = personajeActivo

  method aparece(elemento) {
    personajeActivo.encontrar(elemento)
  }

}

object floki {
  const arma = ballesta

  method encontrar(elemento) {
    if (arma.estaCargada()){
      arma.usar()
      elemento.recibirAtaque(arma.potencia())
    }
  }
}

object mario {
  var valorRecolectado = 0
  var ultimoElemento = null

  method encontrar(elemento) {
    valorRecolectado += elemento.darValor()
    elemento.recibirTrabajo()
    ultimoElemento = elemento
  }
  method esFeliz() = 
  valorRecolectado >= 50 || ultimoElemento.altura() >= 10
}

//armas
object ballesta {
  var cantidadDeFlechas = 10

  method estaCargada() = cantidadDeFlechas > 0
  method potencia() = 4
  method usar() {
    cantidadDeFlechas -= 1
  }

}

object jabalina {
  var estaCargada = true

  method estaCargada() = estaCargada 
  method potencia() = 30
  method usar() {
    estaCargada = false

  }

}

// elementos
object castillo {
  var nivelDeDefensa = 150 

  method altura() = 20
  method nivelDeDefensa() = nivelDeDefensa
  method recibirAtaque(potencia) {
    nivelDeDefensa -= potencia
  }
  method recibirTrabajo() {
    nivelDeDefensa = 200.min(nivelDeDefensa + 20)
  }
  method darValor() {
    return nivelDeDefensa / 5
  }
}

object aurora {
  var estaViva = true

  method estaViva() = estaViva
  method altura() = 1 
  method recibirAtaque(potencia) {
    estaViva = potencia < 10
  }
  method recibirTrabajo() {
    
  }
  method darValor() = 15
}

object tipa {
  var altura = 8

  method altura() = altura
  method recibirAtaque(potencia) {}
  method darValor() = altura * 2
  method recibirTrabajo() {
    altura +=1 
  }
  
}

