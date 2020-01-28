//
//  ToDoTableViewController.swift
//  ly-todo
//
//  Created by Leeyoung Song on 2020/01/28.
//  Copyright © 2020 Leeyoung Song. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo]  = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let toDo1 = ToDo()
        toDo1.name = "Set up a recurring meeting with Mati"
        toDo1.done = true
        
        let toDo2 = ToDo()
        toDo2.name = "1:1 with Clay"
        toDo2.done = false
        
        toDos = [toDo1, toDo2]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let toDo = toDos[indexPath.row]
        cell.textLabel?.text = toDo.name

        return cell
    }
}
