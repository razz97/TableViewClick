//
//  ViewController.swift
//  TableViewClick
//
//  Created by Alex Bou on 16/01/2019.
//  Copyright © 2019 Alex Bou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var foos: [Foo] = [
        Foo(titulo: "Uno", imagen: UIImage(named: "dice1")!),
        Foo(titulo: "Dos", imagen: UIImage(named: "dice2")!),
        Foo(titulo: "Tres", imagen: UIImage(named: "dice3")!),
        Foo(titulo: "Cuatro", imagen: UIImage(named: "dice4")!),
        Foo(titulo: "Cinco", imagen: UIImage(named: "dice5")!),
        Foo(titulo: "Seis", imagen: UIImage(named: "dice6")!),
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "myCell",for:indexPath) as! TableViewCellCustom
        customCell.button.setTitle("Buy", for: .normal)
        customCell.uiImage.image = foos[indexPath.row].imagen
        customCell.uiImage.contentMode = .scaleAspectFit
        customCell.label.text = foos[indexPath.row].titulo
        return customCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Numeros"
    }
}

