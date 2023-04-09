//
//  ViewController.swift
//  local_storage_swift
//
//  Created by Emre Yıldız on 6.04.2023.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    var kisilerListe = [Kisiler]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //veriKaydi()
        
        //veriOkumaSiralama()
        
        //veriSil()
        
        //veriGuncelle()
        
        //veriOkuma()
        
        veriOkumaFiltreleme()
        
    }
    
    func veriKaydi(){
        
        let kisi = Kisiler(context: context)
        
        kisi.kisi_ad = "Ece"
        kisi.kisi_yas = 35
        
        appDelegate.saveContext()
        
    }
    
    
    func veriOkuma(){
        
        do{
            
            kisilerListe = try context.fetch(Kisiler.fetchRequest())
            
        }catch{
            print("Veri okurken hata oluştu")
        }
        
        for k in kisilerListe{
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
        
    }
    
    
    func veriOkumaSiralama(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_ad), ascending: true)
        
        fetchRequest.sortDescriptors = [sort]
        
        
        do{
            
            kisilerListe = try context.fetch(fetchRequest)
            
        }catch{
            print("Veri okurken hata oluştu")
        }
        
        for k in kisilerListe{
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
        
    }
    
    func veriOkumaFiltreleme(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "kisi_ad CONTAINS %@","e")
        
        do{
            
            kisilerListe = try context.fetch(fetchRequest)
            
        }catch{
            print("Veri okurken hata oluştu")
        }
        
        for k in kisilerListe{
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
        
    }
    
    
    
    func veriSil(){
        
        let kisi = kisilerListe[2]
        
        context.delete(kisi)
        
        appDelegate.saveContext()
        
    }
    
    func veriGuncelle(){
        let kisi = kisilerListe[1]
        
        kisi.kisi_ad = "Yeni Ece"
        kisi.kisi_yas = 99
        
        appDelegate.saveContext()
    }

}

