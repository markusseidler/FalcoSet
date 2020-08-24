//
//  ContentView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 15/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

class SetGamePresenter: ObservableObject  {
    
    @Published private var model = SetGamePresenter.createSetGame()

    private static func createSetGame() -> CardModel<UIColor, Int, Double, String> {
        
        let theme = SetTheme.themeStandard
        
        return CardModel(symbolColors: theme.colorTheme, symbolCountsPerCard: theme.countTheme, symbolShadings: theme.shadingTheme, symbolShapes: theme.shapesTheme)
    }
    
    // MARK: - Public access to model

    var cards: [Card<UIColor, Int, Double, String>] {
        model.cards.filter() {$0.isDealt}
    }
    
    // MARK: - UI Intent
    func select(card: Card<UIColor, Int, Double, String>) {
        model.selectCard(card: card)
    }
   
}

