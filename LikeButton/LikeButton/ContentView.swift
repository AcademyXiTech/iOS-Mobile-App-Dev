//
//  ContentView.swift
//  LikeButton
//
//  Created by Cameron Edwards on 14/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLiked : Bool = false
    
    var body: some View {
        
        Button(action: {
            self.isLiked.toggle()  //toggles isLiked between true or false
        }) {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .font(.system(size: 100))
                .foregroundColor(isLiked ? .red : .gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
