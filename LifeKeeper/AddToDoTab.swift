//
//  AddToDoTab.swift
//  LifeKeeper
//
//  Created by Hannah F on 11/16/21.
//

import SwiftUI

struct AddToDoTab: View {
    @EnvironmentObject var modelData: ToDos
    @State private var name: String = ""
    @State private var room: String = ""
    @State private var category: String = ""
    @State private var date: String = ""
    @State private var time: String = ""
    @State private var guests: String = ""
    @State private var othernotes: String = ""
    @State public var selectedScreen = 0
    var body: some View {
        NavigationView {
            CustomGradient {
                VStack {
                    CustomPickerView()
                    VStack(alignment: .center, spacing: 10.0) {
                        PurpleTextField(placeholder: "Task Name", value: $name)
                        PurpleTextField(placeholder: "Room Number", value: $room)
                        PurpleTextField(placeholder: "Category", value: $category)
//                        DatePicker(selection: <#T##Binding<Date>#>, label: <#T##() -> _#>)
                        PurpleTextField(placeholder: "Time", value: $time)
                        PurpleTextField(placeholder: "Guests", value: $guests)
                        PurpleTextField(placeholder: "Other Notes", value: $othernotes)
                        Spacer()
                        Button(action: {
                            modelData.addTodo(Todo(taskName: name, roomNumber: Int(room) ?? 10, categorySelected: category, date: Date(), time: 10, guestsInvited: guests, notes: othernotes))
                        }, label: {
                            Text("Append")
                        })
                    }

                }
            }
        }
    }
}

struct AddToDoTab_Previews: PreviewProvider {
    static var previews: some View {
        AddToDoTab()
            .environmentObject(ToDos())
    }
}

struct PurpleTextField: View {
    let placeholder: String
    @Binding var value: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.purple)
                .frame(width: 330, height: 40)
                .shadow(radius: 5, x: 1, y: 7)
            
            TextField(placeholder, text: $value)
                .font(.system(size: 25.0))
                .frame(width: 300, height: 40, alignment: .leading)
        }
        .padding()
    }
}
