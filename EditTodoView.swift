//
//  EditTodoView.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI

struct EditTodoView: View {
    
    var item: TaskEntity
    var viewModel: TodoViewModel
    
    @State private var title: String = ""

    var body: some View {
        VStack {
            TextField("タスク名", text: $title)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("保存") {
                item.title = title
                viewModel.saveContext()
            }
        }
        .onAppear {
            title = item.title ?? ""
        }
    }
}

/*
#Preview {
    EditTodoView()
}
*/
