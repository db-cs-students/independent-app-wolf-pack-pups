//
//  UserInputs.swift
//  LifeKeeper
//
//  Created by Bladen H on 12/7/21.
//

import SwiftUI
import Foundation

struct Todo: Identifiable, Hashable, Codable {
    var id: UUID = UUID()
    var taskName: String
    var roomNumber: Int
    var categorySelected: String
    var date: Date
    var time: Int
    var guestsInvited: String
    var notes: String
    
    
}

struct Category: Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
}

final class ToDos: ObservableObject {
    @Published var todoList: [Todo] = [
        Todo(taskName: "Do Homework", roomNumber: 304, categorySelected: "Chemistry", date: stringDate(year: 2023, month: 11, day: 1), time: 1234, guestsInvited: "Karen, Sue, Bob", notes: "Complete early for extra credit"),
        Todo(taskName: "Do Homework", roomNumber: 304, categorySelected: "Chemistry", date: Date(), time: 1234, guestsInvited: "Karen, Sue, Bob", notes: "Complete early for extra credit")
    ]
    
    @Published var categories: [Category] = []
    
    func addTodo(_ todo: Todo) {
        // Validate or use optional binding
        todoList.append(todo)
    }
    
    func addCategory(_ category: Category) {
        categories.append(category)
    }
}



func stringDate(year: Int, month: Int, day: Int) -> Date {
    let dateComponent = DateComponents(calendar: Calendar.current,year: year, month: month, day: day, hour: 0, minute: 0, second: 0)
    let calendar = Calendar.current
    return calendar.date(from: dateComponent)!
}
