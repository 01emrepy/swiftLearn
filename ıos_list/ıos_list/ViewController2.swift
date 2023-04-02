//
//  ViewController2.swift
//  ıos_list
//
//  Created by Emre Yıldız on 2.04.2023.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var ulkelerTextfield: UITextField!
    var pickerView:UIPickerView?
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ulkeler = ["Turkey","ABD","Italy","Englend"]
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        ulkelerTextfield.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController2.tamamTikla))
        
        let boslukButon = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let iptalButton = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(self.iptalTikla))
        
        toolbar.setItems([iptalButton,boslukButon,tamamButton], animated: true)
        
        ulkelerTextfield.inputAccessoryView = toolbar
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ulkelerTextfield.text = ulkeler[row]
    }
    
    @objc func tamamTikla(){
        ulkelerTextfield.text = ""
        ulkelerTextfield.placeholder = "Ülke Seç"
       view.endEditing(true)
    }
    
    @objc func iptalTikla(){
         view.endEditing(true)
    }
    

    @IBAction func goTo3Page(_ sender: Any) {
    }
}
