//
//  ToDoDetails.swift
//  LifeKeeper
//
//  Created by Hannah F on 11/15/21.
//

import SwiftUI

struct ToDoDetails: View {
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
                

                Text("Finish Project")
                    .font(.system(size: 40.0))
                    .padding()
                
                Text("History")
                    .font(.system(size: 20.0))
                    .foregroundColor(Color.gray)
                
                VStack(alignment: .leading, spacing: 30.0) {
                    Text("Room: W287")
                        .font(.system(size: 25.0))
                    
                    Text("Date: 11/5/2021")
                        .font(.system(size: 25.0))
                    
                    Text("Time: 2PM")
                        .font(.system(size: 25.0))
                    
                    Text("Guests: Bob, Sue, Karen")
                        .font(.system(size: 25.0))
                    
                    Text("Notes: Complete by 2PM and make sure it's submitted in MLA formatting.")
                        .font(.system(size: 25.0))
                    
                }
                .padding()
            
            }
            
                
        }
        
        
    }
}

struct ToDoDetails_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetails()
    }
}
