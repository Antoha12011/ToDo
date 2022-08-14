//
//  ViewController.swift
//  ToDo
//
//  Created by Антон Павлов on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Задачи"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // User Defaults.
        if !UserDefaults().bool(forKey: "setup") {
            UserDefaults().set(true, forKey: "setup")
            UserDefaults().set(0, forKey: "count")
        }
        
        
        updateTasks()
    }
    
    func updateTasks() {
        
    }
    
    @IBAction func didTapAdd() {
      
        let vc = storyboard?.instantiateViewController(withIdentifier: "entry") as! EntryViewController
        vc.title = "Новая задача"
        vc.update = {
            self.updateTasks()
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
}


