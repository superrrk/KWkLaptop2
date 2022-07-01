//
//  FirstQViewController.swift
//  Mini Project 2 Quiz
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class FirstQViewController: UIViewController {

    @IBOutlet weak var numberOne: UILabel!
    
    @IBOutlet weak var qOne: UILabel!
    
    @IBOutlet weak var incorrectMessage: UILabel!
    
    @IBOutlet weak var correctMessage: UILabel!
    

    
    override func viewDidLoad() {
        correctMessage.isHidden = true
        incorrectMessage.isHidden = true
        super.viewDidLoad()

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

    @IBAction func firstOptionIncorrect(_ sender: UIButton) {
        incorrectMessage.isHidden = false
        correctMessage.isHidden = true
        
    }
    
    @IBAction func secondOptionCorrect(_ sender: UIButton) {
        correctMessage.isHidden = false
        incorrectMessage.isHidden = true
    }

    @IBAction func thirdOptionIncorrect(_ sender: UIButton) {
        incorrectMessage.isHidden = false
        correctMessage.isHidden = true
    }
    
}
