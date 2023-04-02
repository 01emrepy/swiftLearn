//
//  ViewController.swift
//  ıos_list
//
//  Created by Emre Yıldız on 2.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeTextfield: UITextField!
    @IBOutlet weak var dateTextfield: UITextField!
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        if #available(iOS 13.4, *){
            datePicker?.preferredDatePickerStyle = .wheels
        }
        dateTextfield.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        if #available(iOS 13.4, *){
            timePicker?.preferredDatePickerStyle = .wheels
        }
        timeTextfield.inputView = timePicker
        
        
        datePicker?.addTarget(self, action: #selector(self.showDate(datePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(self.showTime(timePicker:)), for: .valueChanged)
        
        let dokunmaAlgılama = UITapGestureRecognizer(target: self, action: #selector(self.dokunmaAlgılamaMethod))
    }

    @objc func showDate(datePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let alınanTarih = dateFormatter.string(from: datePicker.date)
        
        dateTextfield.text = alınanTarih
    }
    
    @objc func showTime(timePicker:UIDatePicker){
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        let alınanSaat = timeFormatter.string(from: timePicker.date)
        
        timeTextfield.text = alınanSaat
    }
    
    @IBAction func goTo2PageButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let navigatePage = storyboard.instantiateViewController(withIdentifier: "page2") as! ViewController2
        
        navigationController?.pushViewController(navigatePage, animated: true)
    }
    @objc func dokunmaAlgılamaMethod(){
        view.endEditing(true)
    }
}

