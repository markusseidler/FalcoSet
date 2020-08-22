//
//  CardView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 19/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card: Card<UIColor, Int, CGFloat, String>
    
    var body: some View {
    
            ZStack {
                RoundedRectangle(cornerRadius: self.roundedRectangleCornerRadius).stroke(Color.black)
                
                self.cardBuilder()
            }
            .padding(self.spacingBetweenCards)
    }
    
    // TODO: - fix the shapes postions and size with geometry reader?
    
    @ViewBuilder
    private func cardBuilder() -> some View {
        VStack (alignment: .center){
            ForEach(0..<self.card.contentTwo) { _ in
                
                self.shapeSelector(shapeString: self.card.contentFour)
//
                }
            }
        .padding()
    }
    
    @ViewBuilder
    func shapeSelector (shapeString: String) -> some View {
        if shapeString == SetCardShapes.diamond.rawValue {
            DiamondShape()
        } else if shapeString == SetCardShapes.rectangle.rawValue {
            Rectangle()
        } else if shapeString == SetCardShapes.roundedRectangle.rawValue {
            RoundedRectangle(cornerRadius: roundedRectangleCornerRadius)
        }
    }
        

    
    
    // MARK: View Constants
    
    let fontSizeRatio: CGFloat = 0.1
    let spacingBetweenCards: CGFloat = 10.0
    let roundedRectangleCornerRadius: CGFloat = 50.0
}


struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        let card = Card(contentOne: UIColor.red, contentTwo: 2, contentThree: CGFloat(5), contentFour: "Test card", id: UUID(), isSelected: true, isDealt: true, isMatched: true)
        return CardView(card: card)
    }
    
    
    
}
