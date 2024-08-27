//
//  RedBeatifulRectangles.swift
//  Memorize
//
//  Created by Diar Orynbek on 25.08.2024.
//

import SwiftUI

struct RedBeatifulRectangles: View {
    @State var emojis: [String]
    
    @State var count: Int = 4
    
    
    var emojiVichelsArray = ["🚅","🛶","🚁","⛵️","🚀","✈️","🚔","🏎️","🚌","🚑"]
    var emojiPeopleArrau = ["👨‍🚒","👩‍⚖️","👰‍♀️","👩‍🚀","🧑‍🎨","👩‍🎤","🧑‍🍳","👮‍♂️","👩🏻‍🦰"]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ForEach(0..<count, id:\.self) { index in
                        Contents(emoji: emojis[index])
                    }
                }
                .foregroundColor(.orange)
                .imageScale(.small)
                .padding()
                
                HStack {
                    addButton
                    Spacer()
                    removeButton
                }
                .padding()
                
            }
            .padding()
            .navigationTitle("Memorize")
        }
    }
    
    var addButton: some View {
        Button {
            
        } label: {
            Image(systemName: "plus.app.fill")
        }
        .font(.largeTitle)
    }
    
    var removeButton: some View {
        Button {
    
        } label: {
            Image(systemName: "minus.square.fill")
        }
        .font(.largeTitle)
        .foregroundColor(.red)
    }
}



struct Contents: View {
    @State var isOff = false
    let emoji: String
    
    var body: some View {
        ZStack{
            if isOff == true {
                Circle()
                    .foregroundColor(.green)
                Text(emoji).font(.largeTitle)
            } else {
                Circle()
                Text(emoji).font(.largeTitle)
            }
        }
        .onTapGesture {
            isOff.toggle()
        }
    }
}

#Preview {
    RedBeatifulRectangles(emojis: ["1", "2", "3"])
}
