//
//  SwiftUIView.swift
//  LifeKeeper
//
//  Created by Iyana G on 11/29/21.
//

import SwiftUI

struct BackgroundsView: View {
    var body: some View {
        CustomGradient {
            Text("Hello, world!")
                .padding()
        }
    }
}

struct CustomGradient<Content: View>: View {
    @ViewBuilder var content: Content
    
    var colors: [Color] = [
        Color("Isabelline"),
        Color("Linen"),
        Color("PalePink"),
        Color("MimiPink"),
        Color("MintCream"),
        Color("PowderBlue"),
        Color("Isabelline"),
        Color("LavendarWeb"),
        Color("PeriwinkleCrayola")
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            content
        }
    }
}

struct BackgroundsView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsView()
            .environmentObject(ToDos())
    }
}
