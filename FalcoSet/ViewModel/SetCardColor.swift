//
//  ColorEnum.swift
//  FalcoSet
//
//  Created by Markus Seidler on 15/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

//https://oleb.net/blog/2016/11/rawrepresentable/

enum SetCardColor {
    case red
    case green
    case blue
}

extension SetCardColor: RawRepresentable {
   typealias RawValue = UIColor
    
    init?(rawValue: UIColor) {
        switch rawValue {
        case UIColor.red: self = .red
        case UIColor.green: self = .green
        case UIColor.blue: self = .blue
        default: return nil
        }
    }
    
    var rawValue: UIColor {
        switch self {
        case .red: return UIColor.red
        case .green: return UIColor.green
        case .blue: return UIColor.blue
        }
    }
}

