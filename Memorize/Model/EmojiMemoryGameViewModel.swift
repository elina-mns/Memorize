//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Elina Mansurova on 2021-09-08.
//

import SwiftUI


class EmojiMemoryGameViewModel: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
        
    private static let emojis = ["🤲", "👐", "👏", "🤝", "👍", "👎", "👊", "✊", "🤜", "🤞", "✌️", "🤟", "👌", "🤌", "🤏"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private(set) var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
