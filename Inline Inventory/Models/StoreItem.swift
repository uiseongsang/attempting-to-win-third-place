//
//  Inventory.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import Foundation
import SwiftUI


struct StoreItem:Identifiable, Decodable {
    var id: Int?
    let SKU: Int
    let Name: String
    let QTY: Int
    let Image: String
    let Threshold: Int
}
