//
//  CustomBarButton.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct CustomBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
            .font(.custom("Avenir", size: 16))
            .padding(.bottom,10)
            .border(width: isSelected ? 2 : 1, edges: [.bottom], color: .black)
    }
}

//
//struct CustomBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomBarButton(text: <#String#>, isSelected: <#Binding<Bool>#>)
//    }
//}
