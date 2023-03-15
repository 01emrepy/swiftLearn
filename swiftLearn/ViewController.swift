//
//  ViewController.swift
//  swiftLearn
//
//  Created by Emre Yıldız on 10.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var birthdayTextfield: UITextField!
    
    @IBOutlet weak var nameTitle: UILabel!
    
    @IBOutlet weak var birthdayTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        
        nameTitle.text = "name : \(nameTextfield.text!) "
        birthdayTitle.text = "birthday : \(birthdayTextfield.text!) "
    }
    
}

