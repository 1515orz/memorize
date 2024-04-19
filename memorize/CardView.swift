//
//  CardView.swift
//  memorize
//
//  Created by Peter Beng on 2024/4/12.
//

import SwiftUI

struct CardView: View{
    
    @State var isFaceUp = false
    let content: String
    
    var body: some View{
        
//        #error("This MUST bet done")
        ZStack {
            //            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            let base = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 5)
                                    
                Text(content).font(.largeTitle)
            }   else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}



