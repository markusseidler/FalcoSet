//
//  PlayView.swift
//  FalcoSet
//
//  Created by Markus Seidler on 21/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct PlayView: View {
    var playArray = 1
    
    var body: some View {
        VStack {
            ForEach(0..<playArray) {_ in
                Rectangle().padding()
            }
            .padding()
        }
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView(playArray: 3)
    }
}
