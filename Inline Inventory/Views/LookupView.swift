//
//  SearchView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct LookupView: View {
    
    @State var searchText = ""
    @ObservedObject var network = Network()
    
    var body: some View {
        
        //MARK: Creates the Seach Bar for use and has binding property
        SearchBarView(searchText: $searchText)
            .padding(.top, 40)
        
        List (network.storeProduct) { user in
            HStack(alignment:.top) {
                
                // Text("\(user.Image)")
                Text("\(user.Name)")
                    .padding()
                Spacer()
                Text("\(user.QTY)")
                    .padding()
                
                Spacer()
                Text("\(user.Threshold)")
                    .padding()
                Spacer()
            }
        } .searchable(text: $searchText)
    }
    //FIXME: Not working on getting the searchable items
//    var searchResults: [StoreItem] {
//        if searchText.isEmpty {
//            return []
//        } else {
//            return network.storeProduct.filter(StoreItem.Name)
//        }
//    }
    
}


//TODO: Create a table instead of a list 


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        LookupView()
    }
}
