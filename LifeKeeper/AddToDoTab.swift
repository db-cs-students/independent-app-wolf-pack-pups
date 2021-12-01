//
//  AddToDoTab.swift
//  LifeKeeper
//
//  Created by Hannah F on 11/16/21.
//

import SwiftUI

struct AddToDoTab: View {
    @State private var name: String = ""
    @State private var room: String = ""
    @State private var category: String = ""
    @State private var date: String = ""
    @State private var time: String = ""
    @State private var guests: String = ""
    @State private var othernotes: String = ""
    var body: some View {
        NavigationView {
            CustomGradient {
                VStack(alignment: .center, spacing: 10.0) {
                    PurpleTextField(placeholder: "Task Name", value: $name)
                    PurpleTextField(placeholder: "Room Number", value: $room)
                    PurpleTextField(placeholder: "Category", value: $category)
                    PurpleTextField(placeholder: "Date", value: $date)
                    PurpleTextField(placeholder: "Time", value: $time)
                    PurpleTextField(placeholder: "Guests", value: $guests)
                    PurpleTextField(placeholder: "Other Notes", value: $othernotes)
                    Spacer()
                }
            }
        }
    }
}

struct AddToDoTab_Previews: PreviewProvider {
    static var previews: some View {
        AddToDoTab()
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
