//
//  ViewController.swift
//  Mini Project 1
//
//  Created by Scholar on 6/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets -----------------------------------------

    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var nameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // if error occurs, disconnect a connection and then reconnect
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if let nameText = textField.text {
            question.text = nameText
        }
    }
    
    @IBAction func surpriseNextPageButton(_ sender: Any) {
        // self.nameText = textField.text!
        performSegue(withIdentifier: "name", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as? secondScreenViewController
            if let name = textField.text {
                destinationVC?.name = name
            }
        }
    }
    
}

