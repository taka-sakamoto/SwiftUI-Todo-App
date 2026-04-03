//
//  Persistence.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/04/03.
//

import SwiftUI
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "TodoModel")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Core Data failed: \(error)")
            }
        }
    }
}

/*
#Preview {
    Persistence()
}
*/
