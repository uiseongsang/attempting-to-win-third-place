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
    var SKU: Int
    var QTY: Int
    var Image: String
    var Threshold: Int
}
