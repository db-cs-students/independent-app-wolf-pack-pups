//
//  CustomPickerView.swift
//  LifeKeeper
//
//  Created by Bladen H on 12/2/21.
//

import SwiftUI

struct CustomPickerView: View {
    @State var pickerSelection: ScreenSelection = .add
    var body: some View {
        NavigationView() {
            NavigationLink(
                destination: EditCategoriesTab(),
                isActive: pickerSelection == .edit) {
                VStack {
                    Picker(selection: $pickerSelection, label: Text("Testing")) {
                        ForEach(ScreenSelection.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                }
            }
        }
    }
}

enum ScreenSelection: View, CaseIterable {
    case add = AddToDoTab()
    case edit = EditCategoriesTab()
}

struct ChosenScreen {
    var selectedScreen: ScreenSelection
    
    var body: some View {
        switch selectedScreen {
        case .add:
           
        case .edit:
      
        }
    }
    
}


struct CustomPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPickerView()

    }
}
