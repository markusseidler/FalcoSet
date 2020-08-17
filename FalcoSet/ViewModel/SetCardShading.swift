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
    typealias RawValue = CGFloat
    
    init?(rawValue: CGFloat) {
        switch rawValue {
        case 0: self = .transparent
        case 0.5: self = .semiTransparent
        case 1: self = .solid
        default: return nil
        }
    }
    
    var rawValue: CGFloat {
        switch self {
        case .transparent: return 0
        case .semiTransparent: return 0.5
        case .solid: return 1
        }
    }
}
