//
//  GridMarkus.swift
//  FalcoSet
//
//  Created by Markus Seidler on 21/8/20.
//  Copyright © 2020 Mata. All rights reserved.
//

import SwiftUI

struct GridMarkus<ObjectItem, collectionOfItemsView>: View where ObjectItem: Identifiable, collectionOfItemsView: View {
    
    private var objectItems: [ObjectItem]
    private var collectionViewClosure: (ObjectItem) -> collectionOfItemsView
    
    init(_ objectItems: [ObjectItem], collectionViewClosure: @escaping (ObjectItem) -> collectionOfItemsView) {
        self.objectItems = objectItems
        self.collectionViewClosure = collectionViewClosure
    }
    
    var body: some View {
        GeometryReader { geometry in
            self.collectionOfObjectItemsBody(for: GridLayoutMarkus(itemCount: self.objectItems.count, in: geometry.size))
        }
    }
    
    private func collectionOfObjectItemsBody(for layout: GridLayoutMarkus) -> some View {
        ForEach(objectItems) { item in
            self.objectItemBody(for: item, in: layout)
        }
    }
    
    private func objectItemBody (for objectItem: ObjectItem, in layout: GridLayoutMarkus) -> some View {
        
        let index = objectItems.findIndexOfElement(objectItem)
        
        return Group {
            if index != nil {
                collectionViewClosure(objectItem)
                    .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                    .position(layout.location(ofItemAt: index!))
            }
        }
        
        
        
        
    }
    
    
    
}
