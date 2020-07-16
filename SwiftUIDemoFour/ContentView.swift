//
//  ContentView.swift
//  SwiftUIDemoFour
//
//  Created by Fahim Rahman on 15/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 0
    
    @State private var images = ["facebook", "twitter", "googleplus"]
    
    @State private var imagesNumbers = [0, 0, 0]
    
    var body: some View {
        
        // background
        ZStack {
            
            Rectangle()
                .foregroundColor(Color(.sRGB, red: 0/255, green: 148/255, blue: 50/255, opacity: 1))
                .edgesIgnoringSafeArea(.all)
            
            
            Rectangle()
                .foregroundColor(Color(.sRGB, red: 106/255, green: 176/255, blue: 76/255, opacity: 1))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                //title
                HStack {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.black)
                    
                    Text("Swappie")
                        .foregroundColor(.black)
                        .bold()
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.black)
                    
                }
                .scaleEffect(2)
                
                Spacer()
                
                // counter
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                
                // cards
                
                HStack {
                    
                    Spacer()
                    
                    CardView(image: $images[imagesNumbers[0]])

                    CardView(image: $images[imagesNumbers[1]])

                    CardView(image: $images[imagesNumbers[2]])
                    
                    Spacer()
                }
                
                Spacer()
                
                // button
                
                Button(action: {
                    
                    for i in 0...self.imagesNumbers.count - 1 {
                        
                        self.imagesNumbers[i] = Int.random(in: 0...self.images.count - 1)
                    }
                    
                    if self.imagesNumbers.dropFirst().allSatisfy({ $0 == self.imagesNumbers.first }) {
                        
                        self.credits += 1
                    }
                    
                }) {
                    
                    Text("Swap")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 40)
                        .background(Color.black)
                        .cornerRadius(20)
                    
                }
                
                Spacer()
            }
        }
    }
}





// preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
