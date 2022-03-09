//
//  ContentView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var serverViewModel = ServerViewModel()
    
    var body: some View {
        
        VStack {
            List(serverViewModel.items, id: \.id) { item in
                HStack(alignment: .center) {
                    // TODO: Get the URL so that the API can display these
                    //                    Text(item.id)
                    //                    Text(item.name)
                    //                    Text(item.quantity)
                }
            }.listStyle(GroupedListStyle())
        }.onAppear(perform: {
            serverViewModel.fetchStoreData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
