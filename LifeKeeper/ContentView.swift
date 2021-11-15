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
            Widget(width: 378, height: 150, widgetColor: Color.red) {}
            HStack {
                Widget(width: 187, height: 311, widgetColor: Color.pink) {}
                VStack {
                    Widget(width: 187, height: 153, widgetColor: Color.blue) {}
                    Widget(width: 187, height: 153, widgetColor: Color.purple) {}
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
