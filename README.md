# ThisSwift

### This page is study swift


## Day 1
### Array vs Dictionary 
배열과 딕셔너리의 차이점

###배열 선언
```
let arraylist = [Int]()
or
let arraylist1 : [String] = ["Apple","Banana","strawberry"]
```
로 선언 가능 let으로 선언하였기 때문에 타입 변경 및 값 변경 불가능

###딕셔너리 선언
```
let dictionary0 : [String:String] = ["Apple":"apple","Banana":"banana"]
```
로 선언 가능
배열과는 다르게 [String:String]으로 타입이 지정되어있는데
key : value 를 뜻하며 key와 대응하는 value가 존재한다.


###차이점
배열은 순서가 존재한다.
0 1 2 3 4 .. n 으로 0부터 시작한다.

딕셔너리는 순서가 존재하지 않고
만약 이것을 반복문으로 표현하였을 경우 배열은 순서대로
값이 나오게 되지만 딕셔너리는 순서와 상관없이 값이 나온다.


## Day 2

### struct vs class
구조체와 클래스의 차이점
```
struct Person {
	var name : String
	var age : Int
}
// class 는 초기값인 init 를 설정해주어야함

class Car {
	var name : String
	var color : String

	init(name:String,color:Int){
		self.name = name
		self.color = color
	}
}
let sueun  = Person(name:"sueun",age:20)
print(sueun.name)
print(sueun.age)
let sonata = Car(name:"SuuenCar",color:"black")
print(sonata.name)
print(sonata.color)
```

구초체를 선언하여 사용하게 되면
구조체로 찍어내사용한 사람이 그 값만 수정가능하다

클래스는 구조체와는 다르게 자신의 것을 다른사람이 수정할 수 있다.
person -> sonata -> nil 이렇게 연결되어있다.
