//
//  ContentView.swift
//  memorize
//
//  Created by Peter Beng on 2024/4/12.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    //    @Query private var items: [Item]
    let emojis = ["🥲", "😂", "😎", "🥵","😍", "🥲", "😂", "😎", "🥵","😍"]
    @State var cardCount = 4
    
    var body: some View {
        VStack{
            HStack {
                ForEach(0..<cardCount, id: \.self) { index in
                    CardView(content: emojis[index])
                }
            }
            .foregroundColor(.orange)
            .padding()
            HStack {
                Button(action: {
                    if cardCount > 1 {
                        cardCount -= 1
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.badge.minus.fill")
                })
                
                Spacer()
                
                Button(action: {
                    if cardCount < emojis.count {
                        cardCount += 1
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.fill.badge.plus")
                })
            }
            .padding()
            .imageScale(.large)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
