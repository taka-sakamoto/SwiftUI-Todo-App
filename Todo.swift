//
//  Todo.swift
//  TodoList
//
//  Created by Takayuki Sakamoto on 2026/03/13.
//

// import SwiftUI
import Foundation

struct Todo: Identifiable, Codable {
    let id: UUID
    var title: String
    var isCompleted: Bool
}

/*
 #Preview {
 Todo()
 }
 */
