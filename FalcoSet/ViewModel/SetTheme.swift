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
        colorTheme: [SetCardColor.red.rawValue, SetCardColor.green.rawValue, SetCardColor.blue.rawValue],
        countTheme: [SetCardCount.one.rawValue, SetCardCount.two.rawValue, SetCardCount.three.rawValue],
        shadingTheme: [SetCardShading.transparent.rawValue, SetCardShading.semiTransparent.rawValue, SetCardShading.solid.rawValue],
        shapesTheme: [SetCardShapes.diamond.rawValue, SetCardShapes.roundedRectangle.rawValue, SetCardShapes.rectangle.rawValue])
    
}
