//
//  ViewController.swift
//  TabBar
//
//  Created by Emre Yıldız on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    var profilsayac = 0
    var işsayaç = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func profilArttır(_ sender: Any) {
        if let tabItem = tabBarController?.tabBar.items {
            let profilTabBarItem = tabItem[0]
            profilsayac = profilsayac + 1
            
            profilTabBarItem.badgeColor = UIColor.purple
            profilTabBarItem.badgeValue = String(profilsayac)
        }
    }
    @IBAction func işArttır(_ sender: Any) {
        
        if let tabItem = tabBarController?.tabBar.items {
            let profilTabBarItem = tabItem[1]
            işsayaç = işsayaç + 1
            
            profilTabBarItem.badgeColor = UIColor.green
            profilTabBarItem.badgeValue = String(işsayaç)
        }
    }
    
}

