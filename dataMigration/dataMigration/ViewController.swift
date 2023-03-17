//
//  ViewController.swift
//  dataMigration
//
//  Created by Emre Yıldız on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickedB(_ sender: Any) {
        let inputText = labelTextfield.text!
        performSegue(withIdentifier: "aTob", sender: inputText)
    }
    
    @IBAction func clickedC(_ sender: Any) {
        let inputText = labelTextfield.text!
        performSegue(withIdentifier: "aToc", sender: inputText)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier ==  "aTob" {
            print("B ye geçiş oldu")
            
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerB
                
                gidilecekVC.mesajB = veri
            }
        }
        if segue.identifier == "aToc" {
            print("C ye geçiş oldu")
            
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerC
                
                gidilecekVC.mesajC = veri
            }
        }
    }
}

