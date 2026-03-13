//
//  TodoRowView.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI

struct TodoRowView: View {
    var todo: Todo
    
    var body: some View {
        HStack {
            Image(systemName:  todo.isCompleted ? "checkmark.circle.fill" : "circle")
            Text(todo.title)
        }
    }
}

/*
#Preview {
    TodoRowView()
}
*/
