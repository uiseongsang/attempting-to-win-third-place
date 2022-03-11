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
        HStack(spacing: 175) {
            
            Text("Name")
                .offset(x: -5, y: 5)
            Text("Qty")
                .offset(x: 70, y: 5)
            Text("Threshold")
                .offset(x: 10, y: 5)
        }.padding()
        
        List (network.storeProduct) { user in
            HStack(alignment:.top) {
                Text("\(user.Name)")
                    .padding()
                Spacer()
                Text("\(user.QTY)")
                    .padding()
                
                Spacer()
                Text("\(user.Threshold)")
                    .padding()
                
               
            }
        }.onAppear {
            network.getProduct()
        }
    }
}



struct ItemAvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        ItemAvailabilityView()
            .environmentObject(Network())
    }
}
