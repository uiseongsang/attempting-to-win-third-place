//
//  Inline_InventoryApp.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import SwiftUI

@main
struct Inline_InventoryApp: App {
    var network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
