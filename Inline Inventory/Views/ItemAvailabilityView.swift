//
//  ItemAvailabilityView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct ItemAvailabilityView: View {
    @ObservedObject var serverViewModel = ServerViewModel()
    
    var body: some View {
        
        VStack {
            List(serverViewModel.items, id: \.id) { item in
                HStack(alignment: .center) {
                    Text(item.name + String(item.id) + String(item.quantity))
                }
                
            }.listStyle(GroupedListStyle())
            
        }
        .background(Color.red)
        .onAppear(perform: {
            serverViewModel.fetchStoreData()
        })
    }
}


struct ItemAvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        ItemAvailabilityView()
    }
}
