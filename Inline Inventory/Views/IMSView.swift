//
//  IMSView.swift
//  Inline Inventory
//
//  Created by Noah Boyers on 3/9/22.
//

import SwiftUI

struct IMSView: View {
    var body: some View {
        VStack {
            Text("Lorem ipsum dolor sit amet consectetur adipisicing elit.\n Ducimus placeat alias, sapiente qui eos maxime aut quo \n nesciunt rem eaque, provident magni voluptatum quasi officia \n eius. Rerum eveniet quis eum?")
        }.background(Color.white)
        //FIXME: This is teh HTML outline i recieved - Not sure what else to do
    }
}

struct IMSView_Previews: PreviewProvider {
    static var previews: some View {
        IMSView()
    }
}
