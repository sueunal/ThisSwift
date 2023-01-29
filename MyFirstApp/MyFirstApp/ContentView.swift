//
//  ContentView.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    let name = "Hi Sueun!"
    var body: some View {
        HStack{
            Text(name)
            Text(name)
            Text(name)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
