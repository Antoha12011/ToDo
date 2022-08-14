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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Сохранить", style: .done, target: self, action: #selector(saveTask))
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        return true
    }
    @objc func saveTask() {
        
        guard let text = field.text, !text.isEmpty else {
            return
        }
        
        
        
    }
}
