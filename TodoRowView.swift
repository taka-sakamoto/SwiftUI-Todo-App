//
//  TodoRowView.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI

struct TodoRowView: View {
    
    @ObservedObject var task: TaskEntity
    var viewModel: TodoViewModel
    
    var body: some View {
        HStack {
            Button {
                viewModel.toggleComplete(task)
            } label: {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
            }
            .buttonStyle(.plain) // 重要（Listの挙動対策）
            
            Text(task.title ?? "")
                .strikethrough(task.isCompleted)
            
            Spacer()
        }
        .padding(.vertical, 4)
    }
}

/*
#Preview {
    TodoRowView()
}
*/
