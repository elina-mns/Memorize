//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Elina Mansurova on 2021-09-09.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGameViewModel()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(gameViewModel: game)
        }
    }
}
