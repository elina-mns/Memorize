//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Elina Mansurova on 2021-09-08.
//

import SwiftUI


class EmojiMemoryGameViewModel {
    
    static let emojis = ["🤲", "👐", "👏", "🤝", "👍", "👎", "👊", "✊", "🤜", "🤞", "✌️", "🤟", "👌", "🤌", "🤏"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    private(set) var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
