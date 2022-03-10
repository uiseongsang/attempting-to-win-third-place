//
//  Inventory.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import Foundation
import SwiftUI

//MARK: Model of the things a store item consists of
struct StoreItem: Identifiable, Codable {
    var id: Int
    let name: String
    let quantity: Int
    let productImage: String?
    let Threshold: Int
}
