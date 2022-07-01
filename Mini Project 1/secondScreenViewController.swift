//
//  secondScreenViewController.swift
//  Mini Project 1
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class secondScreenViewController: UIViewController {

    var finalName : String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var namePlaceholderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePlaceholderLabel.text = "Hi there, \(finalName)."

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
