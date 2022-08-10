//
//  ViewController.swift
//  ToDo
//
//  Created by Антон Павлов on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
        
        
    }
    extension ViewController: UITableViewDataSource {
        
        
        
    }


