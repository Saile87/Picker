//
//  ContentView.swift
//  Picker
//
//  Created by Elias Breitenbach on 20.11.23.
//

import SwiftUI

struct MainView: View {
    
    @State private var geraetAuswahl: AppleGeräte = .iPhone
    
    var smart: any SmartThing
    
    let iphones: [Iphone] = [
        Iphone(name: "iPhone 15 Pro", color: "Titan White", gb: 128),
        Iphone(name: "iPhone 15 Pro Max", color: "Titan Natur", gb: 256),
        Iphone(name: "iPhone 14 Pro", color: "Lila", gb: 128),
        Iphone(name: "iPhone 14 Pro", color: "Lila", gb: 256)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(iphones, id: \.id) { iphone in
                        Picker("Gerät Auswahl", selection: $geraetAuswahl) {
                            Text("iPhone").tag(AppleGeräte.iPhone)
                            Text("Tablett").tag(AppleGeräte.Tablett)
                           
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }
        }
    }
}

#Preview {
    MainView(smart: Iphone(name: "", color: "", gb: 0))
}
