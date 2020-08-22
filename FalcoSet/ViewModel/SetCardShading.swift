//
//  SetCardShading.swift
//  FalcoSet
//
//  Created by Markus Seidler on 17/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

enum SetCardShading {
    case transparent
    case semiTransparent
    case solid
}

extension SetCardShading: RawRepresentable {
    typealias RawValue = Double
    
    init?(rawValue: Double) {
        switch rawValue {
        case 0: self = .transparent
        case 0.3: self = .semiTransparent
        case 1: self = .solid
        default: return nil
        }
    }
    
    var rawValue: Double {
        switch self {
        case .transparent: return 0
        case .semiTransparent: return 0.3
        case .solid: return 1
        }
    }
}

struct SetCardShading_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
