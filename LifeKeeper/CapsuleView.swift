//
//  CapsuleView.swift
//  LifeKeeper
//
//  Created by Iyana G on 11/18/21.
//

import SwiftUI

struct CapsuleView: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: 351, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack {
                Text("")
                        .font(.title2)
                    .foregroundColor(Color("fontColor"))
                Text("Nov 8 2021")
                    .foregroundColor(Color(""))
                
            }    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView()
    }
}
}
