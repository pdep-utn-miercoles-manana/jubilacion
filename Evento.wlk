import Empresa.*
import Asistencia.*

class Evento {
    const asistencias = []
    
    method registrar(unEmpleado) {
        self.verificarRegistroDe(unEmpleado)
        self.registrarAsistenciaDe(unEmpleado)
    }

    method verificarRegistroDe(unEmpleado) {
        if (!unEmpleado.estaInvitado()) {
            self.error('La persona no se encuentra invitada al evento')
        }
    }

    method registrarAsistenciaDe(unEmpleado) {
        asistencias.add(new Asistencia(empleado = unEmpleado, mesa = unEmpleado.mesa()))
    }
}