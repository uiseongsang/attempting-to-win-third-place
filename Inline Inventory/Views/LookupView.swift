//
//  SearchView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct LookupView: View {
    
    @State var searchText = ""
    @ObservedObject var serverViewModel = Network()
    var body: some View {
        
        //MARK: Creates the Seach Bar for use and has binding property
        SearchBarView(searchText: $searchText)
            .padding(.top, 40)
            .background(Color.white)
        
        
        //MARK: Lists the items that equal the name / SKU if it is there
//        List(serverViewModel.items.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
//            Text(item.name + String(item.id) + String(item.quantity))
//        }.background(Color.white)
    }
}

//TODO: Create a table instead of a list 


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        LookupView()
    }
}
