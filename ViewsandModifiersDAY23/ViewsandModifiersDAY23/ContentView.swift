//
//  ContentView.swift
//  ViewsandModifiersDAY23
//
//  Created by Brianna Babcock on 9/29/20.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.yellow)
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 10))
               }
}


struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .modifier(Title())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
