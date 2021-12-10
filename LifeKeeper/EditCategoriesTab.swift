//
//  EditCategoriesTab.swift
//  LifeKeeper
//
//  Created by Hannah F on 11/30/21.
//

import SwiftUI

struct EditCategoriesTab: View {
    @EnvironmentObject var modelData: ToDos
//    let categories: [String] = []
//    @Binding var categoryname: String
    var body: some View {
        NavigationView {
            
            CustomGradient {
                VStack(alignment: .center, spacing: 10.0) {
                   
                    
                    HStack(alignment: .top, spacing: 60) {
                        Text("Add To-Do")
                            .font(.system(size: 15))
                        
                        
                        Text("Edit Categories")
                            .font(.system(size: 15))
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.purple).frame(width: 140, height: 25))
                    }
                    .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.gray).frame(width: 300, height: 30))
                    .padding()
                    
                    Group {
                        if !modelData.categories.isEmpty {
                            ScrollView {
                                ForEach(modelData.categories, id: \.self) { category in
                                    PurpleCategory(name: category.name)
                                    
                                }
                            }
                        } else {
                            Text("You haven't added any categories yet!")
                                .foregroundColor(.red)
                            
                        }
                        
                        
                    }
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: AddCategoryTab()) {
                        
                        Text("Add Category")
                            .foregroundColor(Color.white)
                            .font(.system(size: 25.0))
                            .background(RoundedRectangle(cornerRadius: 10.0).fill(Color.purple).frame(width: 200, height: 40))
                    }
                    Spacer()
                        .padding()
                }
                
                
            }
        }
    }
}

struct EditCategoriesTab_Previews: PreviewProvider {
//    @State static var categoryname: String = ""
    
    static var previews: some View {

        EditCategoriesTab()
            .environmentObject(ToDos())
    }
}


struct PurpleCategory: View {
    var name: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 40)
                .foregroundColor(.black)
                .opacity(0.1)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color("BarneyBlue"), lineWidth: 5)
                )
                .shadow(radius: 5, x: 5, y: 5)
            
            Text(name)
                .font(.system(size: 18.0))
                
        }
        
        .padding()
    }
}
