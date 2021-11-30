//
//  ContentView.swift
//  LifeKeeper
//
//  Created by Iyana G on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomGradient {
            VStack {
                Title()
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
                        Widget(width: 187, height: 153, widgetColor: Color("PaleOrange")) {
                            VStack {
                                Text("Reminder")
                                    .padding(.trailing, 80)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.darkGray)
                                    .font(.title3)
                                Text("Make sure to carry an umbrella!")
                                    .padding(.leading, 6)
                                    .foregroundColor(.darkGray)
                            }
                        }
                        Widget(width: 187, height: 153, widgetColor: Color("Picasso")) {
                            VStack {
                                Text("Inspirational Quote")
                                    .font(.title3)
                                    .padding(.trailing, 8)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.darkGray)
                                Text("\"Everything will be okay in the end. If it's not okay, it's not the end.\"")
                                    .padding(.leading, 15)
                                    .foregroundColor(.darkGray)
                            }
                            
                        }
                    }
                }
                .padding(.bottom)
                WeatherStats(temp: 57)
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
 Creates the title section.
 */
struct Title: View {
    var body: some View {
        HStack {
            ZStack {
                Text(Date(), style: .date)
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
        }
        .padding(.bottom, 60)
    }
}

extension Color {
    static let darkGray = Color("DarkGray")
    static let barney = Color("BarneyBlue")
}

struct WeatherStats: View {
    var temp: Int
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 245, height: 2, alignment: .center)
                .foregroundColor(.barney)
            VStack {
                Text("\(temp)°")
                    .foregroundColor(.barney)
                Text("Kingsport, TN")
                    .foregroundColor(.barney)
//                HStack {
//                    Text(Date(), style: .time)
//                        .foregroundColor(.barney)
//                    Text(Date(), style: .date)
//                        .foregroundColor(.barney)
//                }
            }
            Rectangle()
                .frame(width: 245, height: 2, alignment: .center)
                .foregroundColor(.barney)
        }
        .padding(.trailing, 120)
    }
}
