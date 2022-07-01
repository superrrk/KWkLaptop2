//
//  CompleteToDoViewController.swift
//  To Do List Project
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    // 6.26 Iteration 1
    var previousVC = ToDoController()
    var selectedToDo = ToDo()
    //

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
    }
}


/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/

