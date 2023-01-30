//
//  myFunc.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/30.
//

import SwiftUI

struct myFunc: View {
    @State var myMind : String =  "nothing is my mind"
    @State var myMindisChanged : Bool = true
    var body: some View {
        VStack{
            Text(myMind)
            Button {
                myMindisChanged.toggle()
                myMind = getMind(with: myMindisChanged)
            } label: {
                    Text("Change my mind!")
            }
        }
    }
    func getMind(with myMindisChanged : Bool)-> String {
        if myMindisChanged {
            return "always open.."
        } else{
            return "but closed.."
        }
    }
}

struct myFunc_Previews: PreviewProvider {
    static var previews: some View {
        myFunc()
    }
}
