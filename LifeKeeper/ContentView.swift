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
					ZStack {
						Rectangle()
							.frame(width: 50, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
							.cornerRadius(25)
						Text("All")
							.padding()
							.foregroundColor(.white)
						
					}
					ZStack {
						Rectangle()
							.frame(width: 73, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
							.cornerRadius(25)
						Text("History")
							.padding()
							.foregroundColor(.white)
					}
					ZStack {
						Rectangle()
							.frame(width: 95, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
							.cornerRadius(25)
						Text("Chemistry")
							.padding()
							.foregroundColor(.white)
					}
					ZStack {
						Rectangle()
							.frame(width: 57, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
							.cornerRadius(25)
						Text("Work")
							.padding()
							.foregroundColor(.white)
					}
					}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
