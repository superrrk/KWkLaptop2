//
//  ViewController.swift
//  Increment Progress Circle
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class ViewController: UIViewController {
    var body: some View {
        ZStack {
            Color(UIColor(red: 11/255.0, green 15/255.0, blue: 128/255.0, alpha: 1))
            
            ZStack {
                //Track Circle
                Circle()
                    .stroke(Color.white.opacity(0.3), style: StrokeStyle(lineWidth: 30))
                //Animation Circle
            }
            .padding(50)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

