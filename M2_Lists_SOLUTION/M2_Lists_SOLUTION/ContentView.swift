//
//  ContentView.swift
//  M2_Lists_SOLUTION
//
//  Created by Cameron Edwards on 1/9/22.
//


import SwiftUI

//THIS IS THE SOLUTION FILE
struct ContentView: View {
    var body: some View {
        VStack{
            Text("Puppies Galore")
                .font(Font.custom("American Typewriter", size: 30.0))
                .padding()
            List {
                HStack{
                    //Golden Retriever
                    Image("puppy")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:150, height:100)
                    Text("Golden Retreiver")
                        .padding()
                }
                .listRowInsets(EdgeInsets(top:0, leading:0, bottom:0, trailing:0))
                .listRowBackground(Color(red: 197/255, green: 212/255, blue: 217/255))
                HStack {
                    //German Shepherd
                    Image("germanshepherd")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 100)
                    Text("German Shepherd")
                        .padding()
                }
                .listRowInsets(EdgeInsets(top:0, leading:0, bottom:0, trailing:0))
                .listRowBackground(Color(red: 197/255, green: 212/255, blue: 217/255))
                //add code after this line...
                HStack {
                Image("bordercollie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 100)
                Text("Border Collie")
                    .padding()
                }
                .listRowInsets(EdgeInsets(top:0, leading:0, bottom:0, trailing:0))
                .listRowBackground(Color(red: 197/255, green: 212/255, blue: 217/255))
            }
            .listStyle(.insetGrouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
