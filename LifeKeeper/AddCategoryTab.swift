//
//  AddCategoryTab.swift
//  LifeKeeper
//
//  Created by Hannah F on 12/2/21.
//

import SwiftUI

struct AddCategoryTab: View {
    @State private var categoryname: String = ""
    var body: some View {
        CustomGradient {
            VStack(alignment: .center, spacing: 10.0) {
                HStack(alignment: .top) {
                    Text("Back")
                        .font(.system(size: 20))
                    Spacer()
                    Text("Add")
                        .font(.system(size: 20))
                }
                .padding()
                
                HStack(alignment: .top, spacing: 60) {
                    Text("Add Category")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.purple).frame(width: 288, height: 25))
                }
                .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.gray).frame(width: 300, height: 30))
                Spacer()
                
                ZStack {
                    TextField("Category Name:", text: $categoryname)
                        .font(.system(size: 25.0))
                        .frame(width: 300, height: 200)
                        .background(RoundedRectangle(cornerRadius: 20.0)
                                        .opacity(0.1)
                                    .overlay(RoundedRectangle(cornerRadius: 15.0).stroke(Color("BarneyBlue"), lineWidth: 3)))
                        
                }
                Spacer()
                    .padding()
                
            }
            Text("Color")
                .font(.system(size: 25.0))
                .frame(width: 300, height: 40)
                .background(RoundedRectangle(cornerRadius: 25.0)
                                .opacity(0.1)
                                .overlay(RoundedRectangle(cornerRadius: 15.0).stroke(Color("BarneyBlue"), lineWidth: 3)))
            
        }
    }
}

struct AddCategoryTab_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryTab()
    }
}
