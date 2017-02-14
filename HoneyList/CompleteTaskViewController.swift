//
//  CompleteTaskViewController.swift
//  HoneyList
//
//  Created by Honey Choksi on 2/13/17.
//  Copyright © 2017 Honey Choksi. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var previousVC = TasksViewController()
    
    var task = Task()

    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important
        {
            taskLabel.text = "❗️\(task.name)"
        }
        else
        {
            taskLabel.text = task.name
        }
    }

    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
