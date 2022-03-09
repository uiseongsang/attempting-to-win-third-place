//
//  APIController.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import Foundation
import SwiftUI


class ServerViewModel: ObservableObject {
    
    //MARK: Connection to the model
    @Published var items = [StoreItem]()
    
    //MARK: Func to connect to the database API
    func fetchStoreData() {
      let api = ""//FIXME: Needs correct URL
      guard let url = URL(string: api) else { return }
      URLSession.shared.dataTask(with: url) { (data, response, error) in
        do {
           if let data = data {
             let result = try JSONDecoder().decode([StoreItem].self, from: data)
             DispatchQueue.main.async {
                self.items = result
             }
           } else {
             print("No data")
           }
        } catch (let error) {
           print(error.localizedDescription)
        }
       }.resume()
    }
}
