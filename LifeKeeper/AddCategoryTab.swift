//
//  AddCategoryTab.swift
//  LifeKeeper
//
//  Created by Hannah F on 12/2/21.
//

import SwiftUI

struct AddCategoryTab: View {
    @EnvironmentObject var modelData: ToDos
    @Environment(\.presentationMode) var presentation

    @State private var categoryname: String = ""
    @State private var categories: String = ""
    var body: some View {
        NavigationView {
            
            CustomGradient {
                VStack(alignment: .center, spacing: 10.0) {
                    
                    
                    HStack(alignment: .top, spacing: 60) {
                        Text("Add Category")
                            .font(.system(size: 15))
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.purple).frame(width: 140, height: 25))
                        
                        
                        Text("Edit Categories")
                            .font(.system(size: 15))
                    }
                    .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.gray).frame(width: 300, height: 30))
                    .padding()
                    Spacer()
                    
                    TextField("Category Name", text: $categoryname)
                        .font(.system(size: 25.0))
                        .padding()
                        .frame(width: 300, height: 200)
                        .background(RoundedRectangle(cornerRadius: 20.0)
                                        .opacity(0.1)
                                        .overlay(RoundedRectangle(cornerRadius: 15.0).stroke(Color("BarneyBlue"), lineWidth: 3)))
                    
                    Text("Color")
                        .font(.system(size: 25.0))
                        .frame(width: 300, height: 40)
                        .background(RoundedRectangle(cornerRadius: 25.0).opacity(0.1).overlay(RoundedRectangle(cornerRadius: 15.0).stroke(Color("BarneyBlue"), lineWidth: 3)))
                    Spacer()
                        .padding()
                    
                    Button(action: {
                            modelData.addCategory(Category(name: categoryname))
                            self.presentation.wrappedValue.dismiss()

                    }) {
                        Text("Add Category")
                    }
                }
                
            }
        }
    }
}

struct AddCategoryTab_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryTab()
            .environmentObject(ToDos())
    }
}

