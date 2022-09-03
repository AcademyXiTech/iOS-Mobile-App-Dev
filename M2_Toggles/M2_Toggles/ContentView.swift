//
//  ContentView.swift
//  M2_Toggles
//
//  Created by Cameron Edwards on 2/9/22.
//

import SwiftUI

struct ContentView: View {

@State var isAlarmSet = true
   
    var body: some View {
        
        VStack {
            HStack {
                //This is the first toggle
                Toggle(isOn: $isAlarmSet) {
                    Text("Alarm")
                }
                .padding()
                Image(systemName: isAlarmSet ? "alarm": "zzz")
                    .font(.system(size:30))
                    .padding()
            }
            //This is the second toggle
            Toggle("Alarm 2", isOn: $isAlarmSet)
                .padding()
            
            //This is the code for the purple Alarm Clock with a border
            HStack {
                Text("Alarm Clock")
                    .foregroundColor(isAlarmSet ? .purple : .gray)
                    .fontWeight(.bold)
                    .padding(5)
                Image(systemName: "alarm")
                    .font(.system(size:25))
                    .foregroundColor(isAlarmSet ? .purple : .gray)
                Toggle("Sound", isOn: $isAlarmSet)
                    .labelsHidden()
                    .toggleStyle(SwitchToggleStyle(tint: .purple))
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 55)
                    .stroke(lineWidth: 2)
                    .foregroundColor(isAlarmSet ? .purple : .gray))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
