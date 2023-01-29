//
//  Variable.swift
//  MyFirstApp
//
//  Created by sueun kim on 2023/01/28.
//

import SwiftUI

struct Variable : View {
    let names : [String] = ["Sueun", "Leeo", "Olivia"]
    let EngKrDictionary : [String:String] = ["Apple":"사과", "Banana":"바나나","Coconut":"코코넛"]
    let houseAnimals :  Set = ["🐶","🐱","🐦","🐦"]
    let farmAnimals : Set = ["🦅","🐓","🐑","🐶","🐱","🐶"]
    
    var body : some View {
        VStack{
            
            Text(names[0])
            Text(names[1])
            Text(names[2])
            
            Text(EngKrDictionary["Apple"]!)
            Text(EngKrDictionary["Banana"]!)
            Text(EngKrDictionary["Coconut"]!)
            
            Text (houseAnimals.description)
            Text (houseAnimals.union(farmAnimals).description)
        }
    }
}
struct Variable_Previews: PreviewProvider{
    static var previews: some View{
        Variable()
    }
}
