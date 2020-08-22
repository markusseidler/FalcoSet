//
//  MainGameView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 19/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

// TODO: Declare ForEach to present card... then think about Grid and GridLayout again.

import SwiftUI

struct MainGameView: View {
    
    var gamePresenter: SetGamePresenter
    var cards: [Card<UIColor, Int, CGFloat, String>]
    
    var body: some View {
        VStack {
//            ForEach(gamePresenter.cards) { card in
//                CardView(card: card)
//            }
            GridMarkus(cards) { card in
                CardView(card: card)
            }
        }.padding()
    }
}

struct MainGameView_Previews: PreviewProvider {
    static var previews: some View {
        let exampleTheme = Theme(
            colorTheme: [SetCardColor.green.rawValue, SetCardColor.red.rawValue],
            countTheme: [SetCardCount.one.rawValue, SetCardCount.two.rawValue, SetCardCount.three.rawValue],
            shadingTheme: [SetCardShading.solid.rawValue],
            shapesTheme: [SetCardShapes.rectangle.rawValue, SetCardShapes.diamond.rawValue, SetCardShapes.roundedRectangle.rawValue])
        
        let exampleModel = CardModel(symbolColors: exampleTheme.colorTheme, symbolCountsPerCard: exampleTheme.countTheme, symbolShadings: exampleTheme.shadingTheme, symbolShapes: exampleTheme.shapesTheme)
        
        let examplePresenter = SetGamePresenter()
        
        return MainGameView(gamePresenter: examplePresenter, cards: exampleModel.cards)
    }
}
