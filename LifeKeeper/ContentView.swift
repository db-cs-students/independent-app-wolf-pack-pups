//
//  ContentView.swift
//  LifeKeeper
//
//  Created by Iyana G on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
			VStack {
				HStack {
							ZStack {
								Capsule()
								Text("All")
									.foregroundColor(.white)
								
								
							}
					
							ZStack {
								Capsule()
								Text("History")
									.foregroundColor(.white)
							}
							ZStack {
								Capsule()
								Text("Chemistry")
									.foregroundColor(.white)
							}
							ZStack {
								Capsule()
								Text("Work")
									.foregroundColor(.white)
							}
				}
				.padding(.leading, 10)
				.padding(.trailing, 10)
				.frame(height: 28, alignment: .center)
				
				HStack {
					Text("Today (3)")
							.font(.largeTitle)
							.multilineTextAlignment(.leading)
						.padding([.bottom, .trailing])
					Text("Monday Nov 8 2021")
						.font(.title3)

				}
				VStack {
					ZStack {
						Capsule()
						Text("Finish Project")
							.foregroundColor(.white)
					}

				}
				.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			}
			
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
