//
//  EditTodoView.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI

struct EditTodoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var viewModel: TodoViewModel
    var todo: Todo
    
    @State private var title: String
    
    init(viewmodel: TodoViewModel, todo: Todo) {
        self.viewModel = viewmodel
        self.todo = todo
        _title = State(initialValue: todo.title)
    }
    
    var body: some View {
        NavigationView {
            Form {
                TextField("タイトル", text: $title)
            }
            .navigationTitle("Todo編集")
            .navigationBarItems(trailing: Button("保存") {
                viewModel.updateToDo(todo: todo, newTitle: title)
                dismiss()
            }
          )
        }
    }
}

/*
#Preview {
    EditTodoView()
}
*/
