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

    override method mesa() {
        return 99
    }

    override method regaloEnEfectivo() {
        return super() + 1000 * self.cantidadEmpleados()
    }

    method cantidadEmpleados() {
        return empleados.size()
    }
}