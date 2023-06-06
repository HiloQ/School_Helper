//
//  ViewController.swift
//  to_do_list
//
//  Created by Jakub Sukiennim on 06/06/2023.
//

import UIKit

var toDoList = [String]()
class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

 
    
    @IBOutlet weak var list: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return toDoList.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
        list.reloadData()
        
    }
}

