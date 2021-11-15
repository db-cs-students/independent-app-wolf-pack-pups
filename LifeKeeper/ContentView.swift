//
//  ContentView.swift
//  LifeKeeper
//
//  Created by Iyana G on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("All")
                .padding()
            Text("History")
            Text("Chemistry")
            Text("Work")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
