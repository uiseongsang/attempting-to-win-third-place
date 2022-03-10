//
//  ItemAvailabilityView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct ItemAvailabilityView: View {
    @EnvironmentObject var network: Network
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                ForEach(network.storeProduct) { user in
                    HStack(alignment:.top) {
                        Text("\(user.QTY)")
                        
                    }
                    //            .background(Color.red)
                    //            .onAppear(perform: {
                    //                network.fetchStoreData()
                    //            })
                }
            }.onAppear {
                network.getUsers()
        }
        }
    }
}


struct ItemAvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        ItemAvailabilityView()
            .environmentObject(Network())
    }
}
