//
//  ContentView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var serverViewModel = ServerViewModel()
    
    @State var tabIndex = 0
    
    var body: some View {
        GeometryReader { geo in
            VStack{
                ZStack {
                    Rectangle()
                        .frame(width: geo.size.width, height: geo.size.height / 10)
                        .ignoresSafeArea()
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("sbuxGreen")/*@END_MENU_TOKEN@*/)
                    HStack {
                        Text("Inventory Management")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding()
                        Spacer()
                        Image("Starbucks-Logo")
                            .resizable()
                            .frame(width: 100, height: 50)
                            .padding()
                    }
                }
                
                //MARK: Main Controller view when opening app
                CustomTabbedView(tabIndex: $tabIndex)
                if tabIndex == 0 {
                    ItemAvailabilityView()
                } else if tabIndex == 1 {
                    IMSView()
                } else if tabIndex == 2{
                    LookupView()
                }
                Spacer()
            }
            .background(Color.white)
            .frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
                .padding(.horizontal, 12)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
