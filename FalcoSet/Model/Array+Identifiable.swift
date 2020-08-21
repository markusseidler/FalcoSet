//
//  Array+Identifiable.swift
//  FalcoSet
//
//  Created by Markus Seidler on 21/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

extension Array where Element: Identifiable {
    func findIndexOfElement (_ element: Element) -> Int? {
        for index in 0..<self.count {
            if element.id == self[index].id {
                return index
            }
        }
        return nil
    }
}


