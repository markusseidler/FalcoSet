//
//  DiamondShape.swift
//  FalcoSet
//
//  Created by Markus Seidler on 17/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct DiamondShape: Shape {
    func path(in rect: CGRect) -> Path {
        var drawingPath = Path()
        
        let northPoint = CGPoint(x: rect.midX,y: rect.midY - rect.height * distanceFromCenterRatio)
        let westPoint = CGPoint(x: rect.midX - rect.width * distanceFromCenterRatio, y: rect.midY)
        let eastPoint = CGPoint(x: rect.midX + rect.width * distanceFromCenterRatio, y: rect.midY)
        let southPoint = CGPoint(x: rect.midX,y: rect.midY + rect.height * distanceFromCenterRatio)
    
        drawingPath.addLines([northPoint, westPoint, southPoint, eastPoint, northPoint])
        
        return drawingPath
        
    }
    
    // MARK: - Drawing Constant
    
    let distanceFromCenterRatio: CGFloat = 0.25
    
    
}

struct DiamondShape_Previews: PreviewProvider {
    static var previews: some View {
        DiamondShape().stroke()
    }
}
