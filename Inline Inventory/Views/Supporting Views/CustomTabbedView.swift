////
////  CustomTabbedView.swift
////  Inline Inventory
////
////  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct CustomTabbedView: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 20) {
            CustomBarButton(text: "Availability", isSelected: .constant(tabIndex == 0))
                .onTapGesture { onButtonTapped(index: 0) }
            CustomBarButton(text: "IMS", isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 1) }
            CustomBarButton(text: "Item Lookup", isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 2) }
            Spacer()
        }
        .border(width: 1, edges: [.bottom], color: .black)
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }  
}

//
//struct CustomTabbedView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabbedView()
//    }
//}
