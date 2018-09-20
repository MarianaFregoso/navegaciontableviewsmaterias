//
//  ViewController.swift
//  navegaciontableviews
//
//  Created by Alumno on 19/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbmateria: UITableView!
    let materias : [Materia] = [Materia (nombre: "Programacion de dispositivos Móviles"),
                                Materia (nombre: "Tratamiento de imagen"),
                                Materia (nombre: "Redes por computadora"),
                                Materia (nombre: "Tratamiento de imagen"),
                                Materia (nombre: "Pensamiento Social"),
                                Materia (nombre: "Animacion por computadora"),
                                Materia (nombre: "Mercadotecnia"),
                                Materia (nombre: "Mexico en el contecto global")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda") as? Celdamateria
        celda?.lblnombre.text = materias[ indexPath.row].nombre
        
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 70
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Materias"
        
        materias[0].calificacionprimerparcial = 10
        materias[2].calificacionsegundoparcial = 9
        materias[3].calificaciontercerparcial = 7 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleMateria" {
            let Destino = segue.destination as? DetalleMateriaController
            
            Destino?.materia =
                materias[(tbmateria.indexPathForSelectedRow?.row)!]
           
        }
    }


}

