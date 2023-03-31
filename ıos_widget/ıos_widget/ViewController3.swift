//
//  ViewController3.swift
//  ıos_widget
//
//  Created by Emre Yıldız on 31.03.2023.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var imageViewSonuc: UIImageView!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var sonuc:Bool?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.title = "Sonuç Ekranı"

        print(sonuc!)
        
        if sonuc! {
            labelSonuc.text = "Kazandınız"
            imageViewSonuc.image = UIImage(named: "mutlu_resim")
            
        }else{
            
            labelSonuc.text = "Kaybettiniz"
            imageViewSonuc.image = UIImage(named: "uzgun_resim")
            
        }
    }
    

    @IBAction func tekrarOyna(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }

}
