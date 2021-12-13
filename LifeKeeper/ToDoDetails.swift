//
//  ToDoDetails.swift
//  LifeKeeper
//
//  Created by Hannah F on 11/15/21.
//

import SwiftUI

struct ToDoDetails: View {
    let name: String
    let room: String
    let date: String
    let category: String
    let time: String
    let guests: String
    let othernotes: String
    var body: some View {
        ZStack(alignment: .top) {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                
                HStack(alignment: .top, spacing: 180.0) {
                    Text("I'm Done")
                        .font(.system(size: 23.0))
                    Text("Back")
                        .font(.system(size: 23.0))
                    
                }
                
                
                Text(name)
                    .font(.system(size: 40.0))
                    .padding()
                
                Text(category)
                    .font(.system(size: 20.0))
                    .foregroundColor(Color.gray)
                
                VStack(alignment: .leading, spacing: 30.0) {
                    Text("Room: \(room)")
                        .font(.system(size: 25.0))
                    
                    Text("Date: \(date)")
                        .font(.system(size: 25.0))
                    
                    Text("Time: \(time)")
                        .font(.system(size: 25.0))
                    
                    Text("Guests: \(guests)")
                        .font(.system(size: 25.0))
                    
                    Text("Notes: \(othernotes)")
                        .font(.system(size: 25.0))
                    
                }
                .padding()
                
            }
            
            
        }
        
        
    }
}

struct ToDoDetails_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetails(name: "Finish homework", room: "W287", date: "11/5/21", category: "History", time: "2PM", guests: "Bob, Sue, Karen", othernotes: "Complete by 2PM and make sure it's submitted in MLA formatting.")
            .environmentObject(ToDos())
    }
}
