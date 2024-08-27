//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Diar Orynbek on 15.08.2024.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            Task4_9(emojis: ["🚗", "⛵️", "🚜", "🚲", "🚕", "🚌", "🚁", "🛶", "🛸", "🚒", "🚗", "⛵️", "🚜", "🚲", "🚕", "🚌", "🚁", "🛶", "🛸", "🚒"], randomNumberEmojis: 10)
        }
    }
}
