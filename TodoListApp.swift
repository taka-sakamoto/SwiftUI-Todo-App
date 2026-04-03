//
//  TodoListApp.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

import SwiftUI
import CoreData

@main
struct TodoListApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
