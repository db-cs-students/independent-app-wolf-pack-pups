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
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Finish Project")
									.font(.title2)
								.foregroundColor(.white)
							Text("Nov 8 2021")
								.foregroundColor(.white)
							
						}
					}
					ZStack {
						Capsule()
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Copper Lab Report")
									.font(.title2)
								.foregroundColor(.white)
							Text("Nov 8 2021")
								.foregroundColor(.white)
						}
					}
					ZStack {
						Capsule()
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Finish Application")
									.font(.title2)
								.foregroundColor(.white)
							Text("Nov 8 2021")
								.foregroundColor(.white)
							
						}
					}
						
					}
				HStack {
					Text("Future")
						.font(.largeTitle)
						.multilineTextAlignment(.leading)
					.padding([.bottom, .trailing])
					
				}
				VStack {
					ZStack {
							Capsule()
								.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("WII Presentation")
									.font(.title2)
								.foregroundColor(.white)
							Text("Nov 24 2021")
								.foregroundColor(.white)
							
						}
					}
					ZStack {
						Capsule()
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Submit Homework #8")
									.font(.title2)
								.foregroundColor(.white)
							Text("Nov 27 2021")
								.foregroundColor(.white)						}
						
					}
					ZStack {
						Capsule()
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Work 7PM-9PM")
									.font(.title2)
								.foregroundColor(.white)
							Text("Nov 28 2021")
								.foregroundColor(.white)
							
						}
						
					}
					ZStack {
						Capsule()
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Submit Homework #17")
									.font(.title2)
								.foregroundColor(.white)
							Text("Nov 28 2021")
								.foregroundColor(.white)						}
						
					}				}

				}
			}
			
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
