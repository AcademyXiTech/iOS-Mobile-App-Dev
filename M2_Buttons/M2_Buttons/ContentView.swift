//
//  ContentView.swift
//  M2_Buttons
//
//  Created by Cameron Edwards on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Press me!") {
                print("Hello there!")
            }
            .padding(.bottom)
            
            //This is another way that you may see a button
            Button {
                print("boo!")
            } label: {
                Label("Press me now!", systemImage: "wand.and.stars")
            }
            .padding(.bottom)
            
            //Let's add some style to that button
            Button {
                print("Ta da!")
            } label: {
                Label("Press me next!", systemImage: "wand.and.stars")
                    .padding(5)  //this just adds a little padding around the text
            }
            .tint(.pink)
            .font(.title)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
