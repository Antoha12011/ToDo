//
//  TaskViewController.swift
//  ToDo
//
//  Created by Антон Павлов on 11.08.2022.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var task: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = task
    }
}
