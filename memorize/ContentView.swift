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
            cards
            cardsAdjustment
        }

    }
    var addCard: some View {
        Button(action: {
            if cardCount < emojis.count {
                cardCount += 1
            }
        }, label: {
            Image(systemName: "rectangle.stack.fill.badge.plus")
        })
        .imageScale(.large)
        .padding()
    }
    
    var removeCard: some View {
        Button(action: {
            if cardCount > 1 {
                cardCount -= 1
            }
        }, label: {
            Image(systemName: "rectangle.stack.badge.minus.fill")
        })
        .imageScale(.large)
        .padding()
    }
    
    var cards: some View {
        HStack {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
 
    var cardsAdjustment: some View {
        HStack {
            removeCard
            Spacer()
            addCard
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
