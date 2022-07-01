//
//  SecondQViewController.swift
//  Mini Project 2 Quiz
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class SecondQViewController: UIViewController {

    @IBOutlet weak var numberTwo: UILabel!
    
    @IBOutlet weak var questionTwo: UILabel!
    
    @IBOutlet weak var correctMsg: UILabel!
    
    @IBOutlet weak var incorrectMsg: UILabel!
    
    override func viewDidLoad() {
        incorrectMsg.isHidden = true
        correctMsg.isHidden = true
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
    
    @IBAction func firstOption(_ sender: UIButton) {
        correctMsg.isHidden = false
        incorrectMsg.isHidden = true
    }
    
    @IBAction func secondOption(_ sender: UIButton) {
        correctMsg.isHidden = true
        incorrectMsg.isHidden = false
    }
    
    @IBAction func thirdOption(_ sender: UIButton) {
        correctMsg.isHidden = true
        incorrectMsg.isHidden = false
    }
    
    @IBAction func nextButton(_ sender: Any) {
    }
}
