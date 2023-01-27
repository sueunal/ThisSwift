//
//  ContentView.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button{
            print("Clicked!!!")
        } label: {
            Text("Hello, sueun!")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.blue)
                .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
