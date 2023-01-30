//
//  func.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/30.
//

import SwiftUI

struct func: View {
    var body: some View {
        @state var myMind : String = "nothing is my mind"
        VStack{
            Button{
                Text(myMind)
            }
        }
    }
}

struct func_Previews: PreviewProvider {
    static var previews: some View {
        func()
    }
}
