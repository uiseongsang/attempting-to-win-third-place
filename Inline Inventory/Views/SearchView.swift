//
//  SearchView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @ObservedObject var serverViewModel = ServerViewModel()
    var body: some View {
        
        //MARK: Creates the Seach Bar for use and has binding property
        SearchBarView(searchText: $searchText)
            .padding(.top, 40)
        
        //MARK: Lists the items that equal the name / SKU if it is there
        List(serverViewModel.items.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
            Text(item.name + String(item.id) + String(item.quantity))
        }
    }
}



struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
