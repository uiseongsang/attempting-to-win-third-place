//
//  APIController.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import Foundation
import SwiftUI


class Network: ObservableObject {
    @Published var storeProduct: [StoreItem] = []
    
    func getUsers() {
        guard let url = URL(string: "https://slimyraccoon.pythonanywhere.com") else { fatalError("Missing URL") }
        
        let urlRequest = URLRequest(url: url)
        
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error.localizedDescription)
                return
            }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            //MARK: Makes sure the response will allow us in with an OK
            if response.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedUsers = try JSONDecoder().decode([StoreItem].self, from: data)
                        self.storeProduct = decodedUsers
                    } catch let DecodingError.dataCorrupted(context) {
                        print(context)
                    } catch let DecodingError.keyNotFound(key, context) {
                        print("Key '\(key)' not found: ", context.debugDescription)
                        print("codingPath: ", context.codingPath)
                    } catch let DecodingError.valueNotFound(value, context) {
                        print("Value '\(value)' not found: ", context.debugDescription)
                        print("codingPath: ", context.codingPath)
                    } catch let DecodingError.typeMismatch(type, context)  {
                        print("Type '\(type)' mismatch: ", context.debugDescription)
                        print("codingPath: ", context.codingPath)
                    } catch {
                        print("error: ", error)
                    }
                    
                }
            }
        }
        
        dataTask.resume()
    }
}



