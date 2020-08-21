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
    
    var body: some View {
        VStack {
//            ForEach(gamePresenter.cards) { card in
//                CardView(card: card)
//            }
            GridMarkus(gamePresenter.cards) { card in
                CardView(card: card)
            }
        }
    }
}

struct MainGameView_Previews: PreviewProvider {
    static var previews: some View {
        let gamePresenter = SetGamePresenter()
        return MainGameView(gamePresenter: gamePresenter)
    }
}
