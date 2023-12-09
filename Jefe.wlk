import Empleado.*

class Jefe inherits Empleado {
    const empleados = []
    
    method agregarEmpleado(unEmpleado) {
        empleados.add(unEmpleado)
    }

    override method esCopado() {
        return false
    }

    override method puedeSerInvitado() {
        return self.sabeLenguajeAntiguo() && self.tieneSoloEmpleadosCopados()
    }

    method tieneSoloEmpleadosCopados() {
        return empleados.all { empleado => empleado.esCopado() }
    }
}