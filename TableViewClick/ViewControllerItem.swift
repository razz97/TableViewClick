//
//  ViewControllerItem.swift
//  TableViewClick
//
//  Created by Alex Bou on 23/01/2019.
//  Copyright © 2019 Alex Bou. All rights reserved.
//

import UIKit

class ViewControllerItem: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelItem: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    var foo: Foo!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = foo.imagen
        labelItem.text = foo.titulo
        labelDescription.text = "Esto es una descripcion muy larga que trata sobre una explicacion detallada sobre el objeto que se muestra en la parte superior de la pantalla dentro de un imageview que se refiere a un item seleccionado previamente en una pantalla anterior."
    }
}
