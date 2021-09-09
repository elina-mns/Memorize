//
//  MemoryGame.swift
//  Memorize
//
//  Created by Elina Mansurova on 2021-09-08.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int) {
        cards = Array<Card>()
        // add number of pairs of cards * 2 cards to cards array
        
    }
    
    //by nesting Card struct we put it inside the Memory Game: MemoryGame.Card
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
