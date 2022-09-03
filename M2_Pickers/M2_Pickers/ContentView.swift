//
//  ContentView.swift
//  M2_Pickers
//
//

import SwiftUI

struct ContentView: View {
    
    @State var selection = "Koala"
    
    var selections = ["Koala", "Dingo", "Kangeroo"]
    
    var body: some View {
        VStack {
            Picker("Please choose an animal", selection: $selection) {
                ForEach(selections, id: \.self) {
                    Text($0)
                }
            }
            
            //Try changing the pickerStyle
            .pickerStyle(.menu)
            
            Text("You have selected: \(selection)")
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
