//
//  CardModel.swift
//  FalcoSet
//
//  Created by Markus Seidler on 15/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import Foundation

struct CardModel<ContentOne, ContentTwo, ContentThree, ContentFour> {
    
    private(set) var cards: [Card<ContentOne, ContentTwo, ContentThree, ContentFour>]
    
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
    
    init(symbolColors contentOneInput: [ContentOne], symbolCountsPerCard contentTwoInput: [ContentTwo], symbolShadings contentThreeInput: [ContentThree], symbolShapes contentFourInput: [ContentFour]) {
        cards = [Card]()
        for contentOne in contentOneInput {
            for contentTwo in contentTwoInput {
                for contentThree in contentThreeInput {
                    for contentFour in contentFourInput {
                        cards.append(Card(contentOne: contentOne, contentTwo: contentTwo, contentThree: contentThree, contentFour: contentFour, isSelected: false, isDealt: false, isMatched: false))
                    }
                }
            }
        }
        
        cards.shuffle()
    }
    
    
    
    
    
    
}



    
