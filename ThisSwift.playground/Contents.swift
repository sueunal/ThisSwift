import UIKit

let arraylist0 : [String] = ["Apple","Banana","strawberry"]

let dictionary0 : [String:String] = ["Apple":"apple","Banana":"banana","Strawberry":"strawberry"]

// 데이터 접근방법의 차이

// 인덱스 접근
arraylist0[0]
arraylist0[1]
arraylist0[2]
//arraylist0[3] 없는 인덱스 접근하여 에러 발생

//key 값 접근
dictionary0["Apple"]
dictionary0["Banana"]
dictionary0["Strawberry"]
dictionary0["Coconut"] // 에러가 발생하지 않고 nil 을 반환
// 정렬의 차이

//순서 대로 나옴 배열은 순서가 존재하기 때문
for item in arraylist0{
	print(item)
}
print("\n")
//데이터의 순서가 존재하지 않음
for item in dictionary0{
	print(item.value)
}

let sueun = ("sueun", 24, true)
var n : [Int]
var i : Int = 0

struct Student: Codable{
    var name: String
    var age:  Int
}

let studentData = """
{
    "name" : "Sueun",
    "age": 20
}
""".data(using: .utf8)!
let student1 = try! JSONDecoder().decode(Student.self, from: studentData)

print(student1)
print(student1.name)
print(student1.age)




