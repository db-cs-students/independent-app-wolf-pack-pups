//
//  Categories.swift
//  LifeKeeper
//
//  Created by Iyana G on 11/22/21.
//

import SwiftUI

struct Categories: View {
    @State var showingSheet = false
    @EnvironmentObject var modelData: ToDos
    
    var todayTodos: [Todo] {
        modelData.todoList.filter { todo in
            todo.date != Date()
        }
    }
    var futureTodos: [Todo] {
        modelData.todoList.filter { todo in
            todo.date == Date()
        }
    }
    
    
    var body: some View {
        CustomGradient{
            VStack {
                HStack {
                    ZStack {
                        Capsule()
                            .fill(Color.white)
                        Text("All")
                            .foregroundColor(Color("DarkGray"))
                        
                        
                    }
                    ZStack {
                        Capsule()
                            .fill(Color("Loblolly"))
                        Text("History")
                            .foregroundColor(Color("DarkGray"))
                    }
                    ZStack {
                        Capsule()
                            .fill(Color("paleYellow"))
                        Text("Chemistry")
                            .foregroundColor(Color("DarkGray"))
                    }
                    ZStack {
                        Capsule()
                            .fill(Color("PaleOrange"))
                        Text("Work")
                            .foregroundColor(Color("DarkGray"))
                    }
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .frame(height: 28, alignment: .center)
                
                HStack {
                    Text("Today (3)")
                        .foregroundColor(Color("DarkGray"))
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                        .padding([.bottom, .trailing])
                    Text(Date(), style: .date)
                        .font(.title3)
                        .foregroundColor(Color("DarkGray"))
                }
                VStack {
                    ForEach(todayTodos) { item in
                        TaskView(assignment: item.taskName, date: item.date)
                    }
                    Text("Future")
                        .foregroundColor(Color("DarkGray"))
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                        .padding([.bottom, .trailing])
                        .padding(.trailing, 250)
                    
                    ForEach(futureTodos) { item in
                        TaskView(assignment: item.taskName, date: item.date)
                    }
                }
            }
        }
        .navigationBarItems(trailing: Button("+") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            NavigationView {
                AddToDoTab()
                    .navigationBarItems(leading: Button("Cancel", action:{showingSheet.toggle()}), trailing: Button("Add", action:{showingSheet.toggle()}))
            }
        }
        )
        
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
            .environmentObject(ToDos())
    }
}

struct TaskView: View {
    let assignment: String
    let date: Date
    var borderColor: Color {
        return [Color("paleYellow"), Color("Loblolly"), Color("PaleOrange")].randomElement()!
    }

    var body: some View {
        ZStack (alignment: .leading) {
            Capsule()
                .fill(Color("Transgray"))

                .frame(width: 351, height: 60, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke((borderColor),
                                lineWidth: 3)
                )

            VStack (alignment: .leading) {
                Text(assignment)
                    .font(.title2)
                    .foregroundColor(Color("DarkGray"))
                Text("\(date, style: .date)")
                    .foregroundColor(Color("DarkGray"))
                    .padding(.leading)
            }
            .padding(.leading, 25)
        }
    }
}
