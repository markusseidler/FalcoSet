//
//  ContentView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 15/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

class SetGamePresenter  {

    private static func createSetGame() -> CardModel<UIColor, Int, CGFloat, AnyView> {
        
        let theme = SetTheme.themeStandard
        
        return CardModel(symbolColors: theme.colorTheme, symbolCountsPerCard: theme.countTheme, symbolShadings: theme.shadingTheme, symbolShapes: theme.shapesTheme)

    }

    
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct SetGamePresenter_Previews: PreviewProvider {
    static var previews: some View {
        SetGamePresenter()
    }
}
