//
//  ContentView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 15/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

class SetGamePresenter  {
    
    private var model = SetGamePresenter.createSetGame()

    private static func createSetGame() -> CardModel<UIColor, Int, Double, String> {
        
        let theme = SetTheme.themeStandard
        
        return CardModel(symbolColors: theme.colorTheme, symbolCountsPerCard: theme.countTheme, symbolShadings: theme.shadingTheme, symbolShapes: theme.shapesTheme)
    }
    
    // MARK: - Public access to model
    
    let numberOfCardsPresented = 33
    
    var cards: [Card<UIColor, Int, Double, String>] {
        
        var randomCards = [Card<UIColor, Int, Double, String>]()
        
        while randomCards.count < numberOfCardsPresented {
            let newCard = model.cards.randomElement()!
            
            if randomCards.findIndexOfElement(newCard) == nil {
                randomCards.append(newCard)
            }
        }
    
        return randomCards
        
    }
   
}

