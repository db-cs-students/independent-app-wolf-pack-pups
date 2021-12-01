//
//  Categories.swift
//  LifeKeeper
//
//  Created by Iyana G on 11/22/21.
//

import SwiftUI

struct Categories: View {
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
                        TaskView(assignment: "Finish Project", date: "Nov 8 2021")
                        TaskView(assignment: "Copper Lab Report", date: "Nov 8 2021")
                        TaskView(assignment: "Finish Application", date: "Nov 8 2021")
                    }
                    HStack {
                        Text("Future")
                            .foregroundColor(Color("DarkGray"))
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                            .padding([.bottom, .trailing])
                            .padding(.trailing, 250)
                    }
                TaskView(assignment: "WII Presentation", date: "Nov 24 2021" )
                TaskView(assignment: "Submit Homework #8", date: "Nov 27 2021" )
                TaskView(assignment: "Work 7PM-9PM", date: "Nov 28 2021" )
                TaskView(assignment: "Submit Homework #17", date: "Nov 28 2021" )
                    
                }
                
            }
            .navigationBarItems(trailing: Image(systemName: "plus"))
            
        }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}

struct TaskView: View {
    let assignment: String
    let date: String
    var borderColor: Color {
        return [Color("paleYellow"), Color("Loblolly"), Color("PaleOrange")].randomElement()!
    }
    
    var body: some View {
        ZStack (alignment: .leading) {
            Capsule()
                .fill(Color("Transgray"))
                .frame(width: 351, height: 58, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke((borderColor),
                                lineWidth: 3)
                )
            VStack (alignment: .leading) {
                Text(assignment)
                    .font(.title2)
                    .foregroundColor(Color("DarkGray"))
                Text(date)
                    .foregroundColor(Color("DarkGray"))
                    .padding(.leading)
            }
            .padding(.leading)
        }
    }
}

