//
//  ViewController2.swift
//  swift_navigate
//
//  Created by Emre Yıldız on 15.03.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickedBack(_ sender: Any) {
        self.dismiss(animated: true,completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("3. sayfaya geçti")
    }

}
