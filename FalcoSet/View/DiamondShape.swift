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
        
        let northPoint = CGPoint(x: rect.midX,y: rect.midY - rect.height * heightDistanceFromCenterRatio)
        let westPoint = CGPoint(x: rect.midX - rect.width * widthDistanceFromCenterRatio, y: rect.midY)
        let eastPoint = CGPoint(x: rect.midX + rect.width * widthDistanceFromCenterRatio, y: rect.midY)
        let southPoint = CGPoint(x: rect.midX,y: rect.midY + rect.height * heightDistanceFromCenterRatio)
    
        drawingPath.addLines([northPoint, westPoint, southPoint, eastPoint, northPoint])
        
        return drawingPath
        
    }
    
    // MARK: - Drawing Constant
    
    let heightDistanceFromCenterRatio: CGFloat = 0.20
    let widthDistanceFromCenterRatio: CGFloat = 0.50
    
    
}

struct DiamondShape_Previews: PreviewProvider {
    static var previews: some View {
        DiamondShape().stroke()
    }
}
