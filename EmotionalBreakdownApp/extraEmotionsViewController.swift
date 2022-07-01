//
//  extraEmotionsViewController.swift
//  EmotionalBreakdownApp
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class extraEmotionsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var message: UILabel!
    
    // arrays for emotions' messages
    
    var hangryArray = ["Run to the local McDonald's 🍟", "Watch some food videos jajaja 🍕", "That's unfortunate 🫣 stay away from me."]
    
    var sleepyArray = ["Cool cats don't sleep. 😎", "Go rest, take a well-deserved nap 💁🏻‍♀️"]
    
    var stressedArray = ["meow"]
    
    var crazyArray = ["stay off the roads imscared 🫣", "go hang out with friends 😵‍💫"]
    
    override func viewDidLoad() {
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
    
    
    @IBAction func hangryButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0..<hangryArray.count)
        message.text = hangryArray[randomNum]
        imageView.image = UIImage(named: "hangrycat")
    }
    
    
    @IBAction func sleepyButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0..<sleepyArray.count)
        message.text = sleepyArray[randomNum]
        imageView.image = UIImage(named: "sleepycat")
    }
    
    @IBAction func stressedButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0..<stressedArray.count)
        message.text = stressedArray[randomNum]
        imageView.image = UIImage(named: "stressedcat" )
    }
    
    @IBAction func crazyButtonPressed(_ sender: UIButton) {
        let randomNum = Int.random(in: 0..<crazyArray.count)
        message.text = crazyArray[randomNum]
        imageView.image = UIImage(named: "crazycat")
        
        
    }
}
