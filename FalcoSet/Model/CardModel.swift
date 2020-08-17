//
//  CardModel.swift
//  FalcoSet
//
//  Created by Markus Seidler on 15/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import Foundation

struct CardModel<contentOne, contentTwo, contentThree, contentFour> {
    
    private(set) var cards: Array<Card<contentOne, contentTwo, contentThree, contentFour>>
    
    private var cardsDealt: [Int]? {
        get {
            cards.indices.filter {cards[$0].isDealt}
        }
        set {
            for index in cards.indices {
                cards[index].isDealt = true
            }
        }
    }
    
    
    
    
    
    
}



    
