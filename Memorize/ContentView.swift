//
//  ContentView.swift
//  Memorize
//
//  Created by Diar Orynbek on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😀", "😃", "😄", "😁", "😇", "3", "4", "5", "6", "7"]
    @State var countCard: Int = 4
    
    
    var body: some View {
        HStack {
            ForEach(0..<countCard, id: \.self) { index in
                RoundedNumberOne(emoji: emojis[index])
            }
            Button("Remove Card") {
                countCard = countCard - 1
            }
            Button("Add Card") {
                countCard = countCard + 1
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct RoundedNumberOne: View {
    var emoji: String
    @State var faceIsUp: Bool = true
    
    var body: some View {
        ZStack {
            if faceIsUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text(emoji).font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        .onTapGesture {
            faceIsUp.toggle()
        }
    }
}
