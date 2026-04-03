//
//  TodoListView.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI

struct TodoListView: View {
    
    @StateObject var viewModel = TodoViewModel()
    @State private var showingAddTodo = false
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.tasks) { task in
                    TodoRowView(task: task, viewModel: viewModel)
                }
                .onDelete { IndexSet in
                    for index in IndexSet {
                        let task = viewModel.tasks[index]
                        viewModel.deleteTask(task)
                    }
                }
            }
            .navigationTitle("Todo")
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddTodo = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        
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
