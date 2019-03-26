import UIKit

protocol ComerProtocolo{
    func comer()
}

//extencion para protocolos
extension ComerProtocolo {
    func terminaComer() {
        print("Ha dejado de comer")
    }
}

class Gato: ComerProtocolo {
    
    
    func comer() {
        print("El gato esta comiendo")
    }
}

class Persona: ComerProtocolo {
    var nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    func comer(){
        print("comer")
    }
}

class Alumno: Persona{
    var matricula: String
    
    init(nombre: String, edad: Int, matricula: String) {
        self.matricula = matricula
        super.init(nombre: nombre, edad: edad)
    }
    
    override func comer() {
        super.comer()
        print("El alumno come")
    }
}

class Trabajador : Persona{
    var noEmpleado: String
    
    init(nombre: String, edad: Int, noEmpleado: String) {
        self.noEmpleado = noEmpleado
        super.init(nombre: nombre, edad: edad)
    }
    
    override func comer() {
        super.comer()
        print("El empleado come")
    }
}

let carlos = Alumno(nombre: "Carlos", edad: 20, matricula: "31514008-6")
let zaira = Trabajador(nombre: "Zaira", edad: 20, noEmpleado: "sadasdasdas")

//var personas = [Persona]()
//personas.append(carlos)
//personas.append(zaira)

//for persona in personas {
//    persona.comer()
//}

let gatoNegro = Gato()

var cosasComiendo = [ComerProtocolo]()
cosasComiendo.append(carlos)
cosasComiendo.append(zaira)
cosasComiendo.append(gatoNegro)

for cosa in cosasComiendo {
    cosa.comer()
    cosa.terminaComer()
}
