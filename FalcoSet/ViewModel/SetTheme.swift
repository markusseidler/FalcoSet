//
//  SetTheme.swift
//  FalcoSet
//
//  Created by Markus Seidler on 18/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import Foundation

struct SetTheme {
    
    static let themeStandard = Theme(
        colorTheme: [SetCardColor.red, SetCardColor.green, SetCardColor.blue],
        countTheme: [SetCardCount.one, SetCardCount.two, SetCardCount.three],
        shadingTheme: [SetCardShading.transparent, SetCardShading.semiTransparent, SetCardShading.solid],
        shapesTheme: [SetCardShapes.diamond, SetCardShapes.roundedRectangle, SetCardShapes.rectangle])
    
}
