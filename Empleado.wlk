class Empleado {
    const lenguajes = []
    
    method aprenderLenguaje(unLenguaje) {
        lenguajes.add(unLenguaje)
    }

    method estaInvitado() {
        return self.esCopado() or self.puedeSerInvitado()
    }

    method esCopado()
    method puedeSerInvitado()

    method sabeLenguajeAntiguo() {
        return lenguajes.any { lenguaje => lenguaje.esAntiguo() }
    }

    method sabeLenguajeModerno() {
        return lenguajes.any { lenguaje => lenguaje.esModerno() }
    }

    method sabeProgramarEn(unLenguaje) {
        return lenguajes.contains(unLenguaje)
    }

    method cantidadLenguajes() {
        return lenguajes.size()
    }
}