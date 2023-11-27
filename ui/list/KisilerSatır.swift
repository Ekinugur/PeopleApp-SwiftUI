//
//  KisilerSatır.swift
//  People
//
//  Created by Ekin on 22.11.2023.
//

import SwiftUI

struct KisilerSatir: View {
    var kisi = KisilerModel()
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text(kisi.kisi_ad!).font(.system(size: 25))
            Text(kisi.kisi_tel!).font(.system(size: 25)).foregroundColor(.blue)
        }
    }
}

/*#Preview {
    KisilerSatir()
}*/
