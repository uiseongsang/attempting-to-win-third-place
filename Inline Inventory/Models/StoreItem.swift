//
//  Inventory.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import Foundation
import SwiftUI

struct StoreItem: Identifiable, Codable {
    var id: Int
    let name: String
    let quantity: Int
    let productImage: String?
    let available: Bool
    let result: [StoreItem]
}
