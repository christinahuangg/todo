//
//  todoApp.swift
//  todo
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoList: App {
  var body: some Scene {
      WindowGroup {
          ContentView()
              .modelContainer(for: ToDoItem.self)
      }
  }
}
