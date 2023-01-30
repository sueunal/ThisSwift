//
//  Myfunction.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/29.
//

import SwiftUI

struct Myfunction: View {
    @State var myMind  : String = "nothing"
    @State var isChangedMind : Bool = false
    
    var body: some View {
        VStack{
            Text(myMind)
            Button {
                isChangedMind.toggle()
                myMind = getMind(with: isChangedMind)
            } label: {
                    Text("Change my mind!")
            }
        }
    }
    func getMind(with isChangedMind: Bool) -> String{
        if isChangedMind{
            return "always open"
        }else{
            return "but closed"
        }
    }
}

struct Myfunction_Previews: PreviewProvider {
    static var previews: some View {
        Myfunction()
    }
}
