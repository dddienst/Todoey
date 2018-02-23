//
//  ViewController.swift
//  Todoey
//
//  Created by Donald Dienst on 2/22/18.
//  Copyright © 2018 DienstNet. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = [("Thing one",false),("Thing two",false), ("Thing Three",false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK - Tableview Dataource Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "ToDoItemCell")
        cell.textLabel?.text = itemArray[indexPath.row].0
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK - Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = tableView.cellForRow(at: indexPath)!
        
        itemArray[indexPath.row].1 = !itemArray[indexPath.row].1
        cell.accessoryType = itemArray[indexPath.row].1 ? .checkmark : .none
        tableView.reloadData()
    }
    
}

