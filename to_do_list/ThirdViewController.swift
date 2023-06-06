//
//  ThirdViewController.swift
//  to_do_list
//
//  Created by Jakub Sukiennim on 06/06/2023.
//

import UIKit

class ThirdViewController: UIViewController{

    
    
    @IBOutlet weak var task: UITextField!
    
    
    @IBAction func add_task(_ sender: Any) {
        
        
        
        toDoList.append(task.text!)
        task.text = ""
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
 
    func textFieldShouldReturn(_ textField: UITextField!) -> Bool
    {
        
        task.resignFirstResponder()
        return true
    }
    
    
}
