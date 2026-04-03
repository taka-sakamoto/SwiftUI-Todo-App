//
//  AddTodoView.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI

struct AddTodoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: TodoViewModel
    @State private var title: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Todoタイトル", text: $title)
            }
            .navigationTitle("新規Todo")
            .navigationBarItems(leading: Button("キャンセル") {
                presentationMode.wrappedValue.dismiss()
            },
                                trailing: Button("追加") {
                if !title.isEmpty {
                    viewModel.addTask(title: title)
                    presentationMode.wrappedValue.dismiss()
                }
            }
        )
        }
    }
}

/*
#Preview {
    AddTodoView()
}
*/
