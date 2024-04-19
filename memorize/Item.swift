//
//  Item.swift
//  memorize
//
//  Created by Peter Beng on 2024/4/12.
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
