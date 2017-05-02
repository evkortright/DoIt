//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Enrique V. Kortright on 5/2/17.
//  Copyright © 2017 Enrique V. Kortright. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        previousVC.tasks.append(task)
        print(previousVC.tasks)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
