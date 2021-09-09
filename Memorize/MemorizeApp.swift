//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Elina Mansurova on 2021-09-09.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGameViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
