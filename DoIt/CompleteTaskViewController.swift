//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Enrique V. Kortright on 5/2/17.
//  Copyright © 2017 Enrique V. Kortright. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var previousVC = TasksViewController()
    
    var task : Task = Task()
    var taskIndex : Int = 0
    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taskLabel.text = task.name
        taskLabel?.text = (task.important ? "❗️" : "") + task.name

    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: taskIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
