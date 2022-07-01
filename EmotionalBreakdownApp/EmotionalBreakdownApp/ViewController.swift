//
//  ViewController.swift
//  EmotionalBreakdownApp
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var background: UIView!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var imageViewEmotions: UIImageView!
    
    var happyArray = ["You go, girl!", "I love that for you", "Continue having a meowful day 🐱", "meow", "YAAAS SLAY QUEEN 💅🏼", "Slay 💋"]
    
    var angryArray = ["grrrr. ", "Take a few deep breaths", "Sometimes life happens", "That's understandable.", "Just keep slaying. ❤️‍🔥", "People suck."]
    
    var sadArray = ["Why don't you do something for you today? 🧸", "Go to starbies and treat yo self. ✨ ", "There's always sunshine behind rain. 🌦"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        
        // Do any additional setup after loading the view.
    }

    @IBAction func happyButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0..<happyArray.count)
        messageLabel.text = happyArray[randomNum]
        imageViewEmotions.image = UIImage(named: "happycat")
    }
    
    @IBAction func angryButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0..<angryArray.count)
        messageLabel.text = angryArray[randomNum]
        imageViewEmotions.image = UIImage(named: "angrycat")
    }
    @IBAction func sadButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0..<sadArray.count)
        messageLabel.text = sadArray[randomNum]
        imageViewEmotions.image = UIImage(named: "sadcat")
    }
}
    


