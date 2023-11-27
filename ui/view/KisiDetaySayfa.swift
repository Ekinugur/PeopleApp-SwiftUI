//
//  KisiDetaySayfa.swift
//  People
//
//  Created by Ekin on 20.11.2023.
//

import SwiftUI

struct KisiDetaySayfa: View {
  
        @State private var tfKisiAd = ""
        @State private var tfKisiTel = ""
    
    var kisi = KisilerModel()
    
    @Binding var kisilerListesi :[KisilerModel]
        
    var viewModel2 = KisiDetaySayfaViewModel()
        
        var body: some View {
            VStack(spacing :100){
                TextField("Kişi Adı", text: $tfKisiAd)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                TextField("Kişi Tel", text: $tfKisiTel)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                Button("GUNCELLE"){
                    viewModel2.guncelle(kisi: kisi, kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
                    kisilerListesi.removeAll()
                }


            }.navigationTitle("Kişi Kayıt")
                .onAppear{
                    tfKisiAd = kisi.kisi_ad!
                    tfKisiTel = kisi.kisi_tel!
                }
        }
    }


/* #Preview {
    KisiDetaySayfa()
}*/
