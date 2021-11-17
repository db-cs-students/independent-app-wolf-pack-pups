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
            Title(day: "MONDAY")
            Widget(width: 378, height: 150, widgetColor: Color("Loblolly")) {
                VStack {
                    Text("Mindfulness")
                        .padding(.trailing, 230)
                        .font(.title2)
                        .foregroundColor(Color.darkGray)
                    Text("Waking up with an organized day always makes you feel better!")
                        .padding()
                        .foregroundColor(Color.darkGray)
                }
            }
            HStack {
                Widget(width: 187, height: 311, widgetColor: Color("Chatelle")) {
                    VStack {
                        Text("To-Do")
                            .padding(.trailing, 90)
                            .font(.title)
                            .foregroundColor(Color.darkGray)
                        Text("- Finish Project \n- WWII Present...\n- Homework #17\n- Copper Lab Re...\n- Finish Applicat...")
                            .padding()
                            .foregroundColor(Color.darkGray)
                    }
                }
                VStack {
                    Widget(width: 187, height: 153, widgetColor: Color("PaleOrange")) {}
                    Widget(width: 187, height: 153, widgetColor: Color("Picasso")) {}
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/**
 A default widget layout with editable parameters to customize the look of the widget.
 */
struct Widget<Content: View>: View {
    private let width: CGFloat
    private let height: CGFloat
    private let widgetColor: Color
    private let content: Content
    
    init(width: CGFloat, height: CGFloat, widgetColor: Color, @ViewBuilder content: () -> Content) {
        self.width = width
        self.height = height
        self.widgetColor = widgetColor
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: width, height: height, alignment: .center)
                .cornerRadius(16.0)
                .foregroundColor(widgetColor)
            content
            
        }
    }
}
/**
 Creates the title section with the editable parameter of day.
 */
struct Title: View {
    var day: String
    var body: some View {
        HStack {
            ZStack {
                Text(day)
                    .font(.title)
                    .foregroundColor(Color("DarkGray"))
                VStack {
                    Rectangle()
                        .frame(width: 221, height: 2, alignment: .center)
                        .padding(.bottom, 35)
                        .foregroundColor(Color.darkGray)
                    Rectangle()
                        .frame(width: 221, height: 2, alignment: .center)
                        .foregroundColor(Color.darkGray)
                }
            }
            Rectangle()
                .frame(width: 15, height: 15, alignment: .center)
            Rectangle()
                .frame(width: 15, height: 15, alignment: .center)
        }.padding(.bottom, 90)
    }
}

extension Color {
    static let darkGray = Color("DarkGray")
}
