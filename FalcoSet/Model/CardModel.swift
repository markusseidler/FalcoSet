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
    
    private(set) var cardsDealt: [Int]? {
        get {
            cards.indices.filter {cards[$0].isDealt}
        }
        set {
            for index in newValue! {
                cards[index].isDealt = true
            }
        }
    }
    
    private var cardsSelected: [Int?] {
        get {
            cards.indices.filter {cards[$0].isSelected}
        }
    }
    
    private var numberOfCards: Int {
           cards.count
       }
    
    private let initialNumbersOfCardsDealt = 12
       

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
        cardsDealt = setCardsToDealRandomly()
        
    }
    
    mutating func selectCard(card: Card<ContentOne, ContentTwo, ContentThree, ContentFour>) {
        if let selectedIndex = cards.findIndexOfElement(card), !card.isMatched, card.isDealt {
            self.cards[selectedIndex].isSelected.toggle()
            self.assessSelection()
        }
    }
    
    private func assessSelection() {
        if cardsSelected.count == 3 {
            
        }
    }

    
    
    private func setCardsToDealRandomly() -> [Int]{
        
        var randomSet = Set<Int>()
        
        while randomSet.count < initialNumbersOfCardsDealt {
            randomSet.insert(Int.random(in: 0..<cards.count))
        }
        
        return Array(randomSet)
    
    }
    
}







    
