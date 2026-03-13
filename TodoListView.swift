//
//  TodoListView.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI

struct TodoListView: View {
    
    @StateObject var viewModel = TodoViewModel()
    // @ObservedObject var viewModel: TodoViewModel
    @State private var showingAddTodo = false
    @State private var selectedTodo: Todo?
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.todos) { todo in
                    TodoRowView(todo: todo)
                        .onTapGesture {
                            viewModel.toggle(todo: todo)
                        }
                    }
               
                .onDelete(perform: viewModel.delete)
            }
            .navigationTitle("Todo")
            
            .navigationBarItems(trailing: Button(action: {
                showingAddTodo = true
                }) {
                    Image(systemName: "plus")
                }
            )
            .sheet(isPresented: $showingAddTodo) {
                AddTodoView(viewModel: viewModel)
            }
        }
       
    }
}

/*
#Preview {
    TodoListView()
}
*/
