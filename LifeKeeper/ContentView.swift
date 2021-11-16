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
                    Text("MONDAY")
                        .font(.title)
                    VStack {
                        Rectangle()
                            .frame(width: 221, height: 2, alignment: .center)
                            .padding(.bottom, 35)
                        Rectangle()
                            .frame(width: 221, height: 2, alignment: .center)
                    }
                }
                Rectangle()
                    .frame(width: 15, height: 15, alignment: .center)
                Rectangle()
                    .frame(width: 15, height: 15, alignment: .center)
            }.padding(.bottom, 90)
            Widget(width: 378, height: 150, widgetColor: Color("Loblolly")) {Text("Mindfulness")}
            HStack {
                Widget(width: 187, height: 311, widgetColor: Color("Chatelle")) {}
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
