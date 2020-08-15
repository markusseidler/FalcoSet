//
//  Card.swift
//  FalcoSet
//
//  Created by Markus Seidler on 15/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct Card<CardContentOne, CardContentTwo, CardContentThree, CardContentFour> {
    var contentOne: CardContentOne
    var contentTwo: CardContentTwo
    var contentThree: CardContentThree
    var contentFour: CardContentFour
    
    var id = UUID()
    var isSelected: Bool
}
