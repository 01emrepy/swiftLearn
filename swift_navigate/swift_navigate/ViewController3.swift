//
//  ViewController3.swift
//  swift_navigate
//
//  Created by Emre Yıldız on 15.03.2023.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "3to2"{
            print("2. sayfaya geçti")
        }
        if segue.identifier == "3to1"{
            print("1. sayfaya geçti")
        }
        
    }
   
}
