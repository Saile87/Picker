//
//  Protocols.swift
//  Picker
//
//  Created by Elias Breitenbach on 20.11.23.
//

import Foundation
    
    protocol SmartThing: Identifiable {
        
        var name: String { get }
        var color: String { get }
        var gb: Int { get }
    }
    
    struct Iphone: SmartThing {
        var id = UUID()
        var name: String
        var color: String
        var gb: Int
    }
    
    struct Tablet: SmartThing {
        var id = UUID()
        var name: String
        var color: String
        var gb: Int
    }

