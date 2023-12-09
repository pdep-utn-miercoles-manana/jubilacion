import Empleado.*

class Jefe inherits Empleado {
    const empleados = []
    
    method agregarEmpleado(unEmpleado) {
        empleados.add(unEmpleado)
    }
}