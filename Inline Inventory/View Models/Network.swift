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
    
    
    func getProduct() {
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
                        let decodedItems = try JSONDecoder().decode([StoreItem].self, from: data)
                        self.storeProduct = decodedItems
                        
                        
                        print(decodedItems)
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
    
    //MARK: Function that POSTS to the Database and updates it.
    func postProduct(SKU: Int, QTY: String) {
        //guard let url = URL(string: "https://slimyraccoon.pythonanywhere.com") else { fatalError("Missing URL") }
        
        guard var components = URLComponents(string: "https://slimyraccoon.pythonanywhere.com") else {
            print("Error: cannot create URLCompontents")
            return
        }
        
        // fixes edge case of wrong quanity by just hitting "save"
        if !QTY.isEmpty && SKU != 0 {
            components.queryItems = [
                URLQueryItem(name: "SKU", value: "\(SKU)"),
                URLQueryItem(name: "QTY", value: "\(QTY)"),
            ]
        } else { return }
        
        guard let url = components.url else {
            print("Error: cannot create URL")
            return
        }
        
        //MARK: Convert model to JSON data
        guard let jsonData = try? JSONEncoder().encode(components) else {
            print("Error: Trying to convert model to JSON data")
            return
        }
        //MARK: Create the url request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type") // the request is JSON
        request.setValue("application/json", forHTTPHeaderField: "Accept") // the response expected to be in JSON format
        request.httpBody = jsonData
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else {
                print("Error: error calling POST")
                print(error!)
                return
            }
            guard let data = data else {
                print("Error: Did not receive data")
                return
            }
            guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode else {
                print("Error: HTTP request failed")
                return
            }
            do {
                guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                    print("Error: Cannot convert data to JSON object")
                    return
                }
                guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                    print("Error: Cannot convert JSON object to Pretty JSON data")
                    return
                }
                guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                    print("Error: Couldn't print JSON in String")
                    return
                }
                
                print(prettyPrintedJson)
            } catch {
                print("Error: Trying to convert JSON data to string")
                return
            }
        }.resume()
    }
}



