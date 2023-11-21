//
//  SmartThingView.swift
//  Picker
//
//  Created by Elias Breitenbach on 20.11.23.
//

import SwiftUI


struct SmartThingView: View {
    
    var smart: any SmartThing
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Modell: \(smart.name)")
                    Text("Farbe: \(smart.color)")
                    Text("Speichergröße: \(smart.gb)")
                }
            }
        }
        
        
    }
}

#Preview {
    SmartThingView(smart: Iphone(name: "", color: "", gb: 0))
}
