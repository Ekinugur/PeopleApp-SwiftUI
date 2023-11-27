//
//  ContentView.swift
//  People
//
//  Created by Ekin on 20.11.2023.
//

import SwiftUI

struct AnaSayfa: View {
    @State private var aramakelimesi = ""
    
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    func sil(at offsets:IndexSet){
        let kisi = viewModel.kisilerListesi[offsets.first!]
        viewModel.kisilerListesi.remove(at: offsets.first!)
        viewModel.sil(kisi: kisi)
    }
    var body: some View {
        NavigationStack{
            List{
                ForEach (viewModel.kisilerListesi){
                    kisi in
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi,kisilerListesi: $viewModel.kisilerListesi)){
                        KisilerSatir(kisi: kisi)
                    }
                }.onDelete(perform: sil)
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName:"plus")
                            
                        }
                    }
                    
                }.onAppear{
                    
                    viewModel.kisileriYukle()
                    print("Anasayfaya dönüldü")
                    
                }
        }.searchable(text: $aramakelimesi,prompt: "Ara")
            .onChange(of: aramakelimesi ){ s in
                viewModel.ara(aramaKelimesi: s)
                if s == "" {
                    viewModel.kisileriYukle()
                }else{
                    viewModel.ara(aramaKelimesi: s)
                }
            }
            }
        
    }
    
    #Preview {
        AnaSayfa()
    }

