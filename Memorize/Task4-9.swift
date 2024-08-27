//
//  Task4-9.swift
//  Memorize
//
//  Created by Diar Orynbek on 26.08.2024.
//

import SwiftUI

struct Task4_9: View {
    @State var emojis = []
    @State var randomNumberEmojis = 10
    
    var body: some View {
        VStack {
            Text("Memorize")
                .font(.largeTitle)
            
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(0..<10, id:\.self) { index in
                    ContentsTo(emoji: emojis[index] as! String)
                }
            }
            .foregroundColor(.orange)
            .imageScale(.small)
            .padding()
        }
        
        HStack {
            addButton
            Spacer()
            removeButton
        }
        .padding()
        
        
        HStack(alignment: .bottom) {
            vehicles
            Spacer()
            bugs
            Spacer()
            faces
        }
        .padding(.horizontal)
        
        
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
    
    var vehicles: some View {
        Button {
            emojis = ["🚗", "⛵️", "🚜", "🚲", "🚕", "🚌", "🚁", "🛶", "🛸", "🚒","⛵️", "🚜", "🚲"].shuffled()
            randomNumberEmojis = Int.random(in: 0..<emojis.count)
        } label: {
            VStack {
                Image(systemName: "car")
                    .font(.largeTitle)
                Text("vehicles")
                    .font(.footnote)
            }
            .padding(.horizontal)
        }
    }
    
    var bugs: some View {
        Button {
            emojis = ["🐝", "🐛", "🦋", "🐞", "🐜", "🦟", "🦗", "🕷", "🦂", "🐌", "🐞", "🐜", "🦟", "🦗", "🕷", "🦂"].shuffled()
            randomNumberEmojis = Int.random(in: 0..<emojis.count)
        } label: {
            VStack {
                Image(systemName: "ant")
                    .font(.largeTitle)
                Text("bugs")
                    .font(.footnote)
            }
            .padding(.horizontal)
        }
    }
    
    var faces: some View {
        Button {
            emojis = ["👳‍♂️", "👩‍🦰", "👨🏽", "🧑🏿‍🦲", "👩🏻‍🦱", "👴", "👱🏽‍♀️", "👶🏻", "👦🏼", "🧔🏻", "👨🏽", "🧑🏿‍🦲", "👩🏻‍🦱", "👴", "👱🏽‍♀️"].shuffled()
            randomNumberEmojis = Int.random(in: 0..<emojis.count)
        } label: {
            VStack {
                Image(systemName: "face.smiling")
                    .font(.largeTitle)
                Text("faces")
                    .font(.footnote)
            }
            .padding(.horizontal)
        }
    }
}


struct ContentsTo: View {
    @State var isOff = false
    let emoji: String
    
    var body: some View {
        ZStack{
            if isOff == true {
                Circle()
                    .foregroundColor(.orange)
                Text(emoji).font(.largeTitle)
            } else {
                Circle()
                //Text(emoji).font(.largeTitle)
            }
        }
        .onTapGesture {
            isOff.toggle()
        }
    }
}


#Preview {
    Task4_9(emojis: ["🚗", "⛵️", "🚜", "🚲", "🚕", "🚌", "🚁", "🛶"], randomNumberEmojis: 10)
}
