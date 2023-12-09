class Lenguaje {
    const anioCreacion

    method esAntiguo() {
        return self.aniosDesdeCreacion() > 30
    }

    method esModerno() {
        return self.aniosDesdeCreacion() < 10
    }

    method aniosDesdeCreacion() {
        return new Date().year() - anioCreacion
    }
}

const wlk = new Lenguaje(anioCreacion = 2016) 
// El objeto wollok ya existe en el lenguaje, por eso lo llamé "wlk"