//
//  Condition.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/29.
//

import SwiftUI

struct Condition: View {
    var randomNumber = 4
    var body: some View{
        
        if randomNumber % 2 == 0{
        Text("짝수")
        }
        else{
            Text("홀수")
        }
    }
}
struct Condition_Previews: PreviewProvider{
    static var previews: some View{
        Condition()
    }
}
