//
//  TodoViewModel.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI
import Combine
import CoreData

class TodoViewModel: ObservableObject {
    
    @Published var tasks: [TaskEntity] = []
    
    private let context = PersistenceController.shared.container.viewContext
    
    init() {
        fetchTasks()
    }
    
    func fetchTasks() {
        let request: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
    
        do {
            tasks = try context.fetch(request)
        } catch {
            print("取得エラー: \(error)")
        }
    }
    
    // 追加
    func addTask(title: String) {
        let task = TaskEntity(context: context)
        task.id = UUID()
        task.title = title
        task.isCompleted = false
        
        saveContext()
        fetchTasks()
    }
    
    // 削除
    func deleteTask(_ task: TaskEntity) {
        context.delete(task)
        saveContext()
        fetchTasks()
    }
    
    // 完了切り替え
    func toggleComplete(_ task: TaskEntity) {
        task.isCompleted.toggle()
        saveContext()
       
    }
    
    // 保存
    func saveContext() {
        do {
            try context.save()
        } catch {
            print("保存エラー : \(error)")
        }
    }
    
}


/*
#Preview {
    TodoViewModel()
}
*/
