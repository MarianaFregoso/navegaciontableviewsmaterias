//
//  Materia.swift
//  navegaciontableviews
//
//  Created by Alumno on 19/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation

class Materia {
    var nombre : String
    var calificacionprimerparcial : Double?
    var calificacionsegundoparcial : Double?
    var calificaciontercerparcial : Double?
    var calificacionfina : Double?
    
    init() {
        nombre = ""
    }
    
    init(nombre : String) {
        self.nombre = nombre
    }
    
}
