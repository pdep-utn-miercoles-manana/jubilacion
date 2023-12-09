import Empresa.*
import Asistencia.*

class Evento {
    const empresa = acmeSA
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

    method balance() {
        return self.regaloEnEfectivo() - self.costoTotal()
    }

    method regaloEnEfectivo() {
        return asistencias.sum { asistencia => asistencia.regaloEnEfectivo() }
    }

    method costoTotal() {
        return 200000 + self.costoPorAsistencias()
    }

    method costoPorAsistencias() {
        return self.cantidadAsistencias() * 5000
    }

    method cantidadAsistencias() {
        return asistencias.size()
    }

    method fueUnExito() {
        return self.balance() > 0 && self.asistieronTodos()
    }

    method asistieronTodos() {
        return self.cantidadAsistencias() == empresa.cantidadInvitados()
    }
}