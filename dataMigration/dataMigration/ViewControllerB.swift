//
//  ViewControllerB.swift
//  dataMigration
//
//  Created by Emre Yıldız on 17.03.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var mesajB: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = mesajB
    }
    
}
