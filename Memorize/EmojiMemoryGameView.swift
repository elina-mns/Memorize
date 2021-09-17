//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Elina Mansurova on 2021-09-08.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var gameViewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        AspectVGrid(items: gameViewModel.cards, aspectRatio: 2/3, content: { card in
            if !card.isFaceUp && card.isMatched {
                Rectangle().opacity(0)
            } else {
                CardView(card: card)
                    .padding(4)
                    .onTapGesture {
                        gameViewModel.choose(card)
                    }
            }
        })
        .foregroundColor(.red)
        .padding(.horizontal)
    }
}

struct CardView: View {
    let card: EmojiMemoryGameViewModel.Card
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                    Text(card.content).font(font(in: geometry.size))
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape.fill()
                }
            }
        }
    }
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.75
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        let game = EmojiMemoryGameViewModel()
        EmojiMemoryGameView(gameViewModel: game)
    }
}
