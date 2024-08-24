//
//  ContentView.swift
//  Memorize
//
//  Created by Diar Orynbek on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    var emojisAnimals = ["🐶", "🐻‍❄️", "🐹", "🐮", "🐵", "🪿", "🐣", "🦉", "🪱", "🐅"]
    
    @State var countCard: Int = 4
    
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    cards
                        .foregroundColor(.orange)
                    removeButton
                    addButton
                }
                .navigationTitle("Memorize")
                .navigationBarTitleDisplayMode(.large)
                
                Button("Are you ok?") {
                    
                }
            }
        }
        .padding()
    }
    
    
    
    var cards: some View {
        ForEach(0..<countCard, id: \.self) { index in
            RoundedNumberOne(emoji: emojisAnimals[index])
        }

    }
    
    var removeButton: some View {
        return Button("Remove Card") {
            countCard = countCard - 1
        }
    }
    
    var addButton: some View {
        return Button("Add Card") {
            countCard = countCard + 1
        }
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
