//
//  DetallleMateriaController.swift
//  navegaciontableviews
//
//  Created by Alumno on 20/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleMateriaController : UIViewController {
    @IBOutlet weak var lblCalificacionPrimerparcial: UILabel!
    @IBOutlet weak var lblCalificacionSegundoparcial: UILabel!
    @IBOutlet weak var lblcalificacionTercerparcial: UILabel!
    @IBOutlet weak var lblCalificacionFinal: UILabel!
    
    
    var materia : Materia?
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if let materiaactual = materia {
            self.title = materiaactual.nombre
            if let primerparcial = materiaactual.calificacionprimerparcial{
                lblCalificacionPrimerparcial.text = "\(primerparcial)"
            }else {
                lblCalificacionPrimerparcial.text = "-"
            }
            
            if let segundoparcial = materiaactual.calificacionsegundoparcial{
                lblCalificacionSegundoparcial.text = "\(segundoparcial)"
            }else{
                lblCalificacionSegundoparcial.text = "-"
            }
            
            if let tercerparcial = materiaactual.calificaciontercerparcial{
                lblcalificacionTercerparcial.text = "\(tercerparcial)"
            }else{
                lblcalificacionTercerparcial.text = "-"
            }
            
            if let calificacionfinal = materiaactual.calificacionfina{
                lblCalificacionFinal.text = "\(calificacionfinal)"
            }else {
                lblCalificacionFinal.text = "-"
            }
            
            
        }
        
    }
}
