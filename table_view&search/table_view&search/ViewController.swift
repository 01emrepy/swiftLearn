//
//  ViewController.swift
//  table_view&search
//
//  Created by Emre Yıldız on 3.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    var aramaSonucları:[String] = [String]()
    var aramaYapılıyorMu = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = [
            "Türkiye","Almanya","İtalya","Rusya"
        ]
        
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController:UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if aramaYapılıyorMu {
            return aramaSonucları.count
        }else{
            return ulkeler.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        if aramaYapılıyorMu {
             cell.textLabel?.text = aramaSonucları[indexPath.row]
        }else{
             cell.textLabel?.text = ulkeler[indexPath.row]
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if aramaYapılıyorMu {
            print("Seçilen Ülke : \(aramaSonucları[indexPath.row])")
        }else{
            print("Seçilen Ülke : \(ulkeler[indexPath.row])")
        }
    
    }

}

extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonucu : \(searchText)")
        
        
        if searchText == "" {//Arama yapılmıyor
            aramaYapılıyorMu = false
        }else{
            aramaYapılıyorMu = true
            
            aramaSonucları = ulkeler.filter({$0.lowercased().contains(searchText.lowercased())})
        }
        
        tableView.reloadData()
        
    }
    
}
