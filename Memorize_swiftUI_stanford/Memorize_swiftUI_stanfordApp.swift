//
//  Memorize_swiftUI_stanfordApp.swift
//  Memorize_swiftUI_stanford
//
//  Created by Julia Semyzhenko on 8/26/22.
//

import SwiftUI

@main
struct Memorize_swiftUI_stanfordApp: App {
    
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
