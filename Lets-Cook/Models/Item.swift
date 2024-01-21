//
//  Item.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
