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
									.fill(Color.gray)
								Text("All")
									.foregroundColor(Color.white)
								
								
							}
					
							ZStack {
								Capsule()
									.fill(Color("loBlolly"))
								Text("History")
									.foregroundColor(Color("fontColor"))
							}
							ZStack {
								Capsule()
									.fill(Color("paleYellow"))
								Text("Chemistry")
									.foregroundColor(Color("fontColor"))
							}
							ZStack {
								Capsule()
									.fill(Color("paleOrange"))
								Text("Work")
									.foregroundColor(Color("fontColor"))
							}
				}
				.padding(.leading, 10)
				.padding(.trailing, 10)
				.frame(height: 28, alignment: .center)
				
				HStack {
					Text("Today (3)")
						.foregroundColor(/*@START_MENU_TOKEN@*/Color("fontColor")/*@END_MENU_TOKEN@*/)
							.font(.largeTitle)
							.multilineTextAlignment(.leading)
						.padding([.bottom, .trailing])
					Text("Monday Nov 8 2021")
						.font(.title3)
						.foregroundColor(/*@START_MENU_TOKEN@*/Color("fontColor")/*@END_MENU_TOKEN@*/)
				}
				VStack {
					ZStack {
						Capsule()
							.fill(Color.gray)
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Finish Project")
									.font(.title2)
								.foregroundColor(Color("fontColor"))
							Text("Nov 8 2021")
								.foregroundColor(Color("fontColor"))
							
						}
					}
					ZStack {
						Capsule()
							.fill(Color.gray)
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Copper Lab Report")
									.font(.title2)
								.foregroundColor(Color("fontColor"))
							Text("Nov 8 2021")
								.foregroundColor(Color("fontColor"))
						}
					}
					ZStack {
						Capsule()
							.fill(Color.gray)
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Finish Application")
									.font(.title2)
								.foregroundColor(Color("fontColor"))
							Text("Nov 8 2021")
								.foregroundColor(Color("fontColor"))
							
						}
					}
						
					}
				HStack {
					Text("Future")
						.foregroundColor(/*@START_MENU_TOKEN@*/Color("fontColor")/*@END_MENU_TOKEN@*/)
						.font(.largeTitle)
						.multilineTextAlignment(.leading)
					.padding([.bottom, .trailing])
					
				}
				VStack {
					ZStack {
							Capsule()
								.fill(Color.gray)
								.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("WII Presentation")
									.font(.title2)
								.foregroundColor(Color("fontColor"))
							Text("Nov 24 2021")
								.foregroundColor(Color("fontColor"))
							
						}
					}
					ZStack {
						Capsule()
							.fill(Color.gray)
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Submit Homework #8")
									.font(.title2)
								.foregroundColor(Color("fontColor"))
							Text("Nov 27 2021")
								.foregroundColor(Color("fontColor"))						}
						
					}
					ZStack {
						Capsule()
							.fill(Color.gray)
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Work 7PM-9PM")
									.font(.title2)
								.foregroundColor(Color("fontColor"))
							Text("Nov 28 2021")
								.foregroundColor(Color("fontColor"))
							
						}
						
					}
					ZStack {
						Capsule()
							.fill(Color.gray)
							.frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
						VStack {
							Text("Submit Homework #17")
									.font(.title2)
								.foregroundColor(Color("fontColor"))
							Text("Nov 28 2021")
								.foregroundColor(Color("fontColor"))						}
						
					}				}

				}
			}
			
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
