//
//  KisiKayitSayfaViewModel.swift
//  People
//
//  Created by Ekin on 24.11.2023.
//

import Foundation
import CoreData

class KisiKayitSayfaViewModel{
    
    let context = persistentContainer.viewContext
    
    func kaydet (kisi_ad:String,kisi_tel :String){
        
        let kisi = KisilerModel(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        
        saveContext()
        
    }
}
