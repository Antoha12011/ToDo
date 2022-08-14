//
//  EntryViewController.swift
//  ToDo
//
//  Created by Антон Павлов on 11.08.2022.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        return true
    }
    @IBAction func saveTask() {
        
        
        
    }
}
