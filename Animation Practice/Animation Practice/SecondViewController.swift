//
//  SecondViewController.swift
//  Animation Practice
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shape = CAShapeLayer()

        let label: UILabel = {
            let label = UILabel()
            label.text = "Calorie Goal"
            label.font = .systemFont(ofSize: 36, weight: .light)
            return label
        }()
        
        func viewDidLoad() {
            
            func didTapButtonYes() {
                // animate
                let animation = CABasicAnimation(keyPath: "strokeEnd")
                animation.toValue = 1
                animation.duration = 3
                animation.isRemovedOnCompletion = false
                animation.fillMode = .forwards
                shape.add(animation, forKey: "animation")
            }
            
            super.viewDidLoad()
            label.sizeToFit()
            view.addSubview(label)
            label.center = view.center
            let circlePath = UIBezierPath(arcCenter: view.center,
                                          radius: 150,
                                          startAngle: -(.pi / 2),
                                          endAngle: .pi * 2 ,
                                          clockwise: true)
            
            let trackShape = CAShapeLayer()
            trackShape.path = circlePath.cgPath
            trackShape.fillColor = UIColor.clear.cgColor
            trackShape.lineWidth = 15
            trackShape.strokeColor = UIColor.lightGray.cgColor
            view.layer.addSublayer(trackShape)
            
            shape.path = circlePath.cgPath
            shape.lineWidth = 15
            shape.strokeColor = UIColor.systemGreen.cgColor
            shape.fillColor = UIColor.clear.cgColor
            shape.strokeEnd = 0
            view.layer.addSublayer(shape)
            
            let button = UIButton(frame: CGRect(x: 20, y: view.frame.size.height-200, width: view.frame.size.width-40, height: 50))
            view.addSubview(button)
            button.setTitle("Animate", for: .normal)
            button.backgroundColor = .systemGreen
            button.addTarget(self, action: #selector(didTapButtonYes), for: .touchUpInside)
        }
            // Do any additional setup after loading the view.
      

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}
