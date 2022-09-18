//
//  EmojiMemoryGame.swift
//  Memorize_swiftUI_stanford
//
//  Created by Julia Semyzhenko on 9/9/22.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojies = ["🚲", "🚗", "🛻", "🏍", "🚁", "🚝", "🚟", "🚍", "🛵", "✈️", "🚀", "🛶", "🚤", "⛵️"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            emojies[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    //MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.chooseCard(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
