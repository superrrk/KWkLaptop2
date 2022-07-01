//
//  AddToDoViewController.swift
//  To Do List Project
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoController()
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelImportant: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /* adjustment iteration 2 6.26
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
    }
     */
    @IBAction func addTapped(_ sender: Any) {

      // we have to grab this view context to be able to work with Core Data
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        // we are creating a new ToDoCD object here, naming it toDo
        let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

        // if the titleTextField has text, we will call that text titleText
        if let titleText = titleTextField.text {
            // we will take the titleText and assign that value to toDo.name
            // this .name and .important came from the attributes you typed in on the Core Data page!
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)

        try? context.save()

       
      }

    }
    


    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  */


}
