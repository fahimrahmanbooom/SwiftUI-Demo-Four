//
//  CardView.swift
//  SwiftUIDemoFour
//
//  Created by Fahim Rahman on 16/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var image: String
    
    var body: some View {
        
        Image(image)
        .resizable()
        .padding(.all, 15)
        .aspectRatio(1, contentMode: .fit)
        .background(Color.white.opacity(0.5))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: Binding.constant(""))
    }
}
