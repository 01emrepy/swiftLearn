//
//  ViewControllerC.swift
//  dataMigration
//
//  Created by Emre Yıldız on 17.03.2023.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var mesajC: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = mesajC
    }

}
