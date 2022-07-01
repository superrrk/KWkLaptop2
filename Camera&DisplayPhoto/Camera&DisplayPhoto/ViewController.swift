//
//  ViewController.swift
//  Camera&DisplayPhoto
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // we inherited code from UINavigationControlDelegate and UIImagePickerControllerDelegate from Apple's code that we can now access their class's objects and code.
    
    var imagePicker = UIImagePickerController()
    
    // outlets
    
    @IBOutlet weak var imageViewDisplay: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func choosePhotoTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
 
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        // update photo with the selected photo
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageViewDisplay.image = selectedImage
            
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
}

