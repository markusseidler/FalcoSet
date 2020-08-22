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
        
//        GeometryReader { geometry in
            
            ZStack {
                RoundedRectangle(cornerRadius: self.roundedRectangleCornerRadius).stroke(Color.black)
                
                self.cardBuilder()
                
//                Text(self.card.contentFour).font(.system(size: geometry.size.height <= geometry.size.width ? geometry.size.height*self.fontSizeRatio : geometry.size.width*self.fontSizeRatio))
//
            }
            .padding(self.spacingBetweenCards)
//        }
    }
    
    // TODO: - fix the shapes postions and size with geometry reader?
    
    @ViewBuilder
    private func cardBuilder() -> some View {
        ZStack {
        VStack (alignment: .center){
            ForEach(0..<self.card.contentTwo) { index in
                
                if self.card.contentFour == SetCardShapes.diamond.rawValue {
                    GeometryReader { geometry in
                        DiamondShape()
                    }
                }
                
                else if self.card.contentFour == SetCardShapes.rectangle.rawValue {
                    
                    GeometryReader { geometry in
                        Rectangle().fill(Color.black)
//                            .frame(height: (geometry.size.width / 2))
                        
                    }
                        
                }
                else if self.card.contentFour == SetCardShapes.roundedRectangle.rawValue {
                    
                    GeometryReader { geometry in
                        
                        RoundedRectangle(cornerRadius: self.roundedRectangleCornerRadius).fill(Color.black)
                        }
                    }
                }
            }
        .padding()
            
        }
    }
        
//        if self.card.contentFour == "diamond" {
//            VStack {
//                ForEach(0..<self.card.contentTwo) {_ in
//                    DiamondShape()
//                        .stroke(Color(self.card.contentOne))
//                }
//            }
//        }
//        else if self.card.contentFour == "rectangle" {
//            VStack {
//                ForEach(0..<self.card.contentTwo) {_ in
//                    Rectangle()
////                        .stroke(Color(self.card.contentOne))
//                }
//            }
//        }
//        else if self.card.contentFour == "roundedRectangle" {
//            VStack {
//                ForEach(0..<self.card.contentTwo) {_ in
//                    RoundedRectangle(cornerRadius: self.roundedRectangleCornerRadius)
//                        .stroke(Color(self.card.contentOne))
//                        .padding()
//                }
////                .padding()
//            }
//        }
        
        
//    }
    
    
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
