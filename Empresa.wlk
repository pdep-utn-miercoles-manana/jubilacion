object acmeSA {
    const personal = []

    method invitados() {
        return personal.filter { empleado => empleado.estaInvitado() }
    }
}