//
//  IMSView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct IMSView: View {
    
    @EnvironmentObject var network: Network
    @State var input = "" {
        didSet {
            let filtered = input.filter { $0.isNumber }
            
            if input != filtered {
                input = filtered
            }
        }
    }
    var productNumber = 000
    
    var body: some View {
        HStack(spacing: 175) {
            
            Text("Name")
                .offset(x: 25, y: 5)
            Text("Qty")
                .offset(x: 70, y: 5)
            Text("Threshold")
                .frame(width: 80)
                .offset(x: -80, y: 5)
            
            Button("Save") {
                network.postProduct(SKU: productNumber, QTY: input)
            }
            .foregroundColor(Color.secondary)
            .frame(width: 75, height: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.secondary, lineWidth: 4)
            )
        }.padding()
        
        List (network.storeProduct) { item in
            HStack(alignment:.top) {
                Text("\(item.Name)")
                    .padding()
                Spacer()
                
                Text("\(item.id)")
                    .padding()
                Spacer()
                
                Text("\(item.QTY)")
                    .padding()
                
                Spacer()
                TextField("Quanitity", text: $input)
                    .padding()
                    .keyboardType(.decimalPad)
                Spacer()
            }
        }
        
    }
}

struct IMSView_Previews: PreviewProvider {
    static var previews: some View {
        IMSView()
            .environmentObject(Network())
    }
}
