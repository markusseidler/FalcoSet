//
//  MainGameView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 19/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct MainGameView: View {
    
    var gamePresenter: SetGamePresenter
    
    var body: some View {
        Text("Test")
    }
}

struct MainGameView_Previews: PreviewProvider {
    static var previews: some View {
        let gamePresenter = SetGamePresenter()
        return MainGameView(gamePresenter: gamePresenter)
    }
}
