//
//  TodoViewModel.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI
import Foundation
import Combine

class TodoViewModel: ObservableObject {
    
    @Published var todos: [Todo] = []
    
    private let saveKey = "todos"
    
    init() {
        // 後でUserDefaultsなどから読み込むことも可能
        loadTodos()
    }
    
    func addTodo(title: String) {
        let todo = Todo(id: UUID(), title: title, isCompleted: false)
        todos.append(todo)
        saveTodos()
    }
    
    func toggle(todo: Todo) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted.toggle()
            saveTodos()
        }
    }
    
    func delete(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
        saveTodos()
    }
    
    func saveTodos() {
        if let encoded = try? JSONEncoder().encode(todos) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }
    
    func loadTodos() {
        if let data = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([Todo].self, from: data) {
            todos = decoded
        }
    }
    
    func updateToDo(todo: Todo, newTitle: String) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].title = newTitle
            saveTodos()
        }
    }
}


/*
#Preview {
    TodoViewModel()
}
*/
