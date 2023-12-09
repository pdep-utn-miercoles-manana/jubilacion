import Empleado.*
import Lenguaje.*

class Desarrollador inherits Empleado {
    override method esCopado() {
        return self.sabeLenguajeAntiguo() || self.sabeLenguajeModerno()
    }

    override method puedeSerInvitado() {
        return self.sabeProgramarEn(wlk) || self.sabeLenguajeAntiguo()
    }
}