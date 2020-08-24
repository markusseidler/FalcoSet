//
//  CardView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 19/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card: Card<UIColor, Int, Double, String>
    
    var body: some View {
    
            ZStack {
                RoundedRectangle(cornerRadius: self.rRectCRCard).stroke(Color.black, lineWidth: card.isSelected ? strokeLineWidthSelected : strokeLineWidth)
                
                self.cardBuilder()
            }
            .padding(self.spacingBetweenCards)
    }
    
    @ViewBuilder
    private func cardBuilder() -> some View {
        VStack (alignment: .center){
            ForEach(0..<self.card.contentTwo) { _ in
                self.shapeSelector(
                    shapeString: self.card.contentFour,
                    color: self.card.contentOne,
                    shading: self.card.contentThree)
                    .padding()
            }
        }
//        .padding()
    }
    
    @ViewBuilder
    func shapeSelector (shapeString: String, color: UIColor, shading: Double) -> some View {

        
        if shapeString == SetCardShapes.diamond.rawValue {
            ZStack{
                DiamondShape().fill().opacity(shading)
                DiamondShape().stroke(lineWidth: strokeLineWidth)
                }
            .foregroundColor(Color(color))
        } else if shapeString == SetCardShapes.rectangle.rawValue {
            ZStack {
                Rectangle().fill().opacity(shading)
                Rectangle().stroke(lineWidth: strokeLineWidth)
                }
            .foregroundColor(Color(color))
            
        } else if shapeString == SetCardShapes.roundedRectangle.rawValue {
            ZStack {
                RoundedRectangle(cornerRadius: rRectCRShape).fill().opacity(shading)
                RoundedRectangle(cornerRadius: rRectCRShape).stroke(lineWidth: strokeLineWidth)
                }
            .foregroundColor(Color(color))
            
        }
    }
    
        

    
    
    // MARK: View Constants
    
    let fontSizeRatio: CGFloat = 0.1
    let spacingBetweenCards: CGFloat = 10.0
    let rRectCRShape: CGFloat = 50.0
    let rRectCRCard: CGFloat = 10.0
    let strokeLineWidth: CGFloat = 2.0
    let strokeLineWidthSelected: CGFloat = 5.0
    
}


struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        let card = Card(contentOne: UIColor.red, contentTwo: 2, contentThree: Double(5), contentFour: "Test card", id: UUID(), isSelected: true, isDealt: true, isMatched: true)
        return CardView(card: card)
    }
    
    
    
}
