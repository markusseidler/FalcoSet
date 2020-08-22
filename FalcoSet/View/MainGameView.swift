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
            GridMarkus(gamePresenter.cards) { card in
                CardView(card: card)
            }
        }.padding()
    }
}

struct MainGameView_Previews: PreviewProvider {
    static var previews: some View {
        
        let gamePresenter = SetGamePresenter()
        return MainGameView(gamePresenter: gamePresenter).previewDevice(PreviewDevice(rawValue: "iPhone 11"))

//
//        ForEach(["iPhone 11", "iPhone 8", "iPhone 11 Pro Max", "iPad Pro(12.9-inch)"], id: \.self) { deviceName in
//            NavigationView {
//                MainGameView(gamePresenter: SetGamePresenter()).previewDevice(PreviewDevice(rawValue: deviceName)).previewDisplayName(deviceName)
//            }
//        }
    
    
    }
}
