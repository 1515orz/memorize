//
//  ContentView.swift
//  memorize
//
//  Created by Peter Beng on 2024/4/12.
//

import SwiftUI
import SwiftData

//test

struct ContentView: View {
    //    @Query private var items: [Item]
    let emojis = ["🥲", "😂", "😎", "🥵","😍"]
    
    var body: some View {
        
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
