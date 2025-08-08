//
//  NewToDoView.swift
//  todo
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View
{
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    @State private var selectedDate = Date()
    
    var body: some View
    {
        VStack
        {
            Text("Task title: ")
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is this important? ")
            }
    
            DatePicker("Due Date", selection: $selectedDate, displayedComponents: .date)


            
            Button
            {
                addToDo()
                showNewTask = false
            }
            label:
            {
                Text("Save")
            }
        }
        .padding()
    }
    
    func addToDo()
    {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: .constant(false))
}
