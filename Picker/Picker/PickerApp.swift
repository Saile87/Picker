//
//  PickerApp.swift
//  Picker
//
//  Created by Elias Breitenbach on 20.11.23.
//

import SwiftUI

@main
struct PickerApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(smart: Iphone(name: "", color: "", gb: 0))
        }
    }
}
