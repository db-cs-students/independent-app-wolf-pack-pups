//
//  AddToDoTab.swift
//  LifeKeeper
//
//  Created by Hannah F on 11/16/21.
//

import SwiftUI

struct AddToDoTab: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .top) {
                Text("Cancel")
                    .font(.system(size: 20))
                Spacer()
                Text("Add")
                    .font(.system(size: 20))
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Name")
                    .font(.system(size: 25.0))
                    .background(RoundedRectangle(cornerRadius: 10.0).stroke())
            }
            Spacer()
                
            
        }
        
        
        
    }
}

struct AddToDoTab_Previews: PreviewProvider {
    static var previews: some View {
        AddToDoTab()
    }
}
