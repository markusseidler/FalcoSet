//
//  GridLayoutMarkus.swift
//  FalcoSet
//
//  Created by Markus Seidler on 21/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct GridLayoutMarkus {
    
    // MARK: Initilizer
    
    init(itemCount: Int, nearAspectRatio desiredAspectRatio: Double = 1, in size: CGSize) {
        self.size = size
        
        guard size.width != 0, size.height != 0, itemCount > 0 else { return }
        
        var bestLayout: (rowCount: Int, columnCount: Int) = (1, itemCount)
        var smallestVariance: Double?
        let sizeAspectRatio = abs(Double(size.width / size.width))
        
        for rows in 1...itemCount {
            let columns = (itemCount / rows) + (itemCount % rows > 0 ? 1 : 0)
            
            if (rows - 1) * columns < itemCount {
                let optimizingAspectRatio = sizeAspectRatio * (Double(rows)/Double(columns))
                let variance = abs(optimizingAspectRatio - desiredAspectRatio)
                
                if smallestVariance == nil || variance < smallestVariance! {
                    smallestVariance = variance
                    bestLayout = (rows, columns)
                }
            }
            
            rowCount = bestLayout.rowCount
            columnCount = bestLayout.columnCount
        }
    }

    
    // MARK: Private properties
    
    private var size: CGSize
    private var rowCount: Int = 0
    private var columnCount: Int = 0
    
    // MARK: Public properties
    
    var itemSize: CGSize {
        if rowCount == 0 || columnCount == 0 {
            return CGSize.zero
        } else {
            return CGSize(
                width: size.width / CGFloat(columnCount),
                height: size.height / CGFloat(rowCount))
        }
    }
    
    // MARK: Public methods
    
    func location(ofItemAt index: Int) -> CGPoint {
        if rowCount == 0 || columnCount == 0 {
            return CGPoint.zero
        } else {
            return CGPoint(
                x: (CGFloat(index % columnCount) + itemPositionRatio) * itemSize.width,
                y: (CGFloat(index / columnCount) + itemPositionRatio) * itemSize.height
            )
        }
    }
    
    // MARK: View Constants
    
    let itemPositionRatio: CGFloat = 0.5
    
    
    
    
    
}
