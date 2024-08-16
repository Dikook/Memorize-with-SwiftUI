//
//  ContentView.swift
//  Memorize
//
//  Created by Diar Orynbek on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            RoundedNumberOne()
            RoundedNumberOne(faceIsUp: true)
            RoundedNumberOne()
            RoundedNumberOne()
            
        }
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct RoundedNumberOne: View {
    var faceIsUp: Bool = false
    
    var body: some View {
        ZStack( content: {
            if faceIsUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}
