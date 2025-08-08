//
//  ToDoItem.swift
//  todo
//
//  Created by Scholar on 8/8/25.
//

import Foundation
import SwiftData

@Model
class ToDoItem
{
    var title: String
    var isImportant: Bool
    var date = Date()
    
    init(title: String, isImportant: Bool = false)
    {
          self.title = title
          self.isImportant = isImportant
        self.date = Date()
    }
}
