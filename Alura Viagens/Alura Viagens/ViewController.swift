//
//  ViewController.swift
//  Alura Viagens
//
//  Created by Marco Aurelio on 31/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tabelaViagens: UITableView!
    
    let listaViagem: Array<String> = ["Rio de Janeiro", "Ceará", "São Paulo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_travels", for: indexPath)
        cell.textLabel?.text = listaViagem[indexPath.row]
        
        return cell
    }
}

