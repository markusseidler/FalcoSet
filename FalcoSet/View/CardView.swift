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
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(card.contentOne))
            Text(card.contentFour)
            
        }
        .padding()
    
    }
}


struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        let card = Card(contentOne: UIColor.red, contentTwo: 5, contentThree: CGFloat(5), contentFour: "Test card", id: UUID(), isSelected: true, isDealt: true, isMatched: true)
        return CardView(card: card)
    }
    
    
    
}
