//
//  KisiDetaySayfaViewModel.swift
//  People
//
//  Created by Ekin on 24.11.2023.
//

import Foundation
import CoreData

class KisiDetaySayfaViewModel {
    func guncelle (kisi:KisilerModel,kisi_ad:String,kisi_tel :String){
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        saveContext()
        
    }
}

