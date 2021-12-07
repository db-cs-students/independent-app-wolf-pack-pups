//
//  UserInputs.swift
//  LifeKeeper
//
//  Created by Bladen H on 12/7/21.
//

import SwiftUI

struct Todo: Hashable, Codable {
    var taskName: String
    var roomNumber: Int
    var categorySelected: String
    var date: Date
    var time: Int
    var guestsInvited: String
    var notes: String
}

final class ToDos: ObservableObject {
    @Published var todoList: [Todo] = [
        Todo(taskName: "Do Homework", roomNumber: 304, categorySelected: "Chemistry", date: Date(), time: 1234, guestsInvited: "Karen, Sue, Bob", notes: "Complete early for extra credit")]
}
