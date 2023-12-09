import Empleado.*

class Infra inherits Empleado {
    var property aniosDeExperiencia

    override method esCopado() {
        return aniosDeExperiencia > 10
    }

    override method puedeSerInvitado() {
        return self.cantidadLenguajes() >= 5
    }
}