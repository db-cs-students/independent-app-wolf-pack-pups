//
//  CustomPickerView.swift
//  LifeKeeper
//
//  Created by Bladen H on 12/2/21.
//

import SwiftUI

struct CustomPickerView: View {
    @State var selectedScreen = 0
    var body: some View {
        Picker(selection: $selectedScreen, label: Text("")) {
            Text("Add To-Do").tag(0)
            Text("Edit Categories").tag(1)
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}


struct CustomPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPickerView()
    }
}
