//
//  CustomPickerView.swift
//  LifeKeeper
//
//  Created by Bladen H on 12/2/21.
//

import SwiftUI

struct CustomPickerView: View {
    @State private var selectedScreen = 0
    @ViewBuilder
    var body: some View {
        
        if selectedScreen == 1 {
            EditCategoriesTab()
            if selectedScreen == 0 {
                AddToDoTab()
            }
        }
        
        VStack {
            Picker(selection: $selectedScreen, label: Text("Picker"), content: {
                Text("Add To-Do").tag(0)
                Text("Edit Categories").tag(1)
                
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}



struct CustomPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPickerView()

    }
}

extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
//        .navigationViewStyle(.stack)
    }
}
