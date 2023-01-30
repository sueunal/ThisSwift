//
//  ContentView.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    // 대입연산자
    let name = "Hi Sueun!"
    var age = 24
    var anyNumber = 56
    var anyNumber2 = 7
    
    var body: some View {
        VStack{
            /* 사칙 연산자
             Text("\(age + anyNumber)")
             Text("\(age - anyNumber)")
             Text("\(age * anyNumber)")
             Text("\(age / anyNumber)")
             */
            
            // 비교연산자
            Text("\(age < anyNumber)".description)
            Text("\(anyNumber < anyNumber2)".description)
            Text("\(anyNumber > anyNumber2)".description)
            Text("\(anyNumber <= anyNumber2)".description)
            Text("\(anyNumber >= anyNumber2)".description)
            Text("\(anyNumber == anyNumber2)".description)
            Text("\(anyNumber != anyNumber2)".description)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
