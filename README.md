# ThisSwift

### This page is study swift


## Day 1
### Array vs Dictionary 
배열과 딕셔너리의 차이점

### 배열 선언
```
let arraylist = [Int]()
or
let arraylist1 : [String] = ["Apple","Banana","strawberry"]
```
로 선언 가능 let으로 선언하였기 때문에 타입 변경 및 값 변경 불가능

### 딕셔너리 선언
```
let dictionary0 : [String:String] = ["Apple":"apple","Banana":"banana"]
```
로 선언 가능
배열과는 다르게 [String:String]으로 타입이 지정되어있는데
key : value 를 뜻하며 key와 대응하는 value가 존재한다.


### 차이점
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


class Car {
	var name : String
	var color : String

	init(name:String,color:Int){
		self.name = name
		self.color = color
	}
-> class는 초기값인 init 를 설정해주어야함
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

#### 느낀점
```
클래스는 내가 작성한 객체가 다른 사람의 오브젝트의 영향을 줄 수 있다.
-> sueun - sonata - friend - avante
구조체는 내가 작성한 객체는 독립적으로 구성되어있고 영향을 줄 수 없다.
-> 구조체는 틀이다. 빵 틀과 같이 만들고 싶은 모양의 구초체를 만들어 찍어내면 되는 것이다.
똑같이 구조체라는 틀을 만들고 그 안에 코드를 넣어서 객체를 만들어 낸다.

이부분을 잘 고려해서 코딩하는 것이 중요하다!
```


## Day3 
### Tuple?

튜플을 언제 쓰면 좋을까?
형태가 배열과 비슷하지만 String, Int, Boolean 값이 한 튜플에 담겨있다.
```
let sueun = ("Sueun", 24, true)

print(sueun)
-> ("Sueun", 24, true)
print(sueun.1)
-> 24
```
꼭 .1, .2 .3 처럼 표현해야 하는가?
dictionary 처럼 name:"Sueun, age:24, hasCar : true 처럼 라벨링을 설정할 수도있다. 
#### 사용하는 이유 
구초체를 만들때 딱 한번만 사용될 경우에 튜플로 생성
여러번 인스턴스를 만들어야 할 때,
변수 여러개를 넘겨야 할 경우 튜플로 생성해서 넘길 수 있다.


## Day4
### Codable?
코더블이 무엇인가?
incodable, decodable 둘다 채용한 프로토콜이다.
```
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
```
코딩을 하다가 JSON data, decoding data 등을 받아야할 경우

#### 정의

```typealias Codable = Decodable & Encodable```

Encodable + Decodable 이 합쳐진 것

Example)
Encodable 모델을 json으로 인코드
Decodeable json을 내가 원하는 모델로 디코드

즉 Encodable, Decodable을 따로 채택하지 않고,
Codable 하나로 채택해 축약할 수 있다.


## Day5
### Array vs Set

#### Array는 배열
중복값이 존재할 수 있다.

#### Set은 집합
중복값이 존재할 수 없다.

```
let smapleArray: [Int] = [1,1,2,2,3,3]
let smapleArray: Set<Int> = Set([1,1,2,2,3,3])

print(smapleArray)
print(smapleSet)
```
Array보다 Set이 더 조회가 빠르다.

## Day6
Edge Case (엣지 케이스)
엣지 케이스란 무엇일까?

엣지 케이스란 
직역하자면 가장자리 사건이다.

#### 개발을 할 때 발생하는 마지막 단계에서 발생하는 것을 의미한다.
**만약, 스트리밍 서비스를 해야한다면 인터넷은 필수적으로 요구된다.**
- 하지만 사용자는 인터넷이 연결이 되어 있긴한데 안되어있는 거처럼 약하다면?
- 앱을 정상적으로 이용할 수 없는 상황이라면?
-> 어디까지 케어를 해주어야 하는가?
-> 연결이 안되어있지는 않지만 서비스이용에 지장을 주면 경고창을 띄워서 사용자에게 알려주거나.
- 연결이 안정적으로 될 때까지 기다리거나? Timeout 설정을 통해?
#### 엣지 케이스 마지막까지 점검해보아야 할 부분이다.
- 예상할 수 없는 것
- 애매모호한 것
- 사용자가 불편함을 겪을 수 있는 가능성이 있는 것

**개발자의 목표는 사용자가 불편함없이 앱을 사용하여 만족감을 주어야 한다.!**
**엣지 케이스는 되도록이면 발생하지 않는 것이 좋다.**

## API(Application Programming Interface)

처음 API를 알게되었을 때는 
**구글, 네이버, 아마존 등에서 제공하는 “함수”로만 생각을 했었다.**

하지만 이번 공부를 통해 다시 생각하게 된 것은 **단어 하나하나의 의미를 생각해 보아야 한다.**

- Application

- Programming

- Interface

여기서 보면 API의 단어들이다.

하지만 여기서 인터페이스의 의미를 생각해보면
**서로 다른 시스템이나 장치를 연결하거나 통신하기 위한 접점이나 경계면이다.**

인터페이스는 그 장치에 접근하기 위한 어떤 것이다.

**예를 들면 키보드, 마우스, API 같은 것들이 그렇다.**


우리집의 온도가 몇 도 인지 주기적으로 받아오는 앱을 만들어야하는데

여기서 드는생각은 우리집의 온도센서 값을 어떻게 받아오지?

우리집의 온도센서에서 값을 받아오기 위해서는 받아와서 나에게 전달해주는 장비가 필요하다.

여기서 우리는 센서 장비에 접근하는 것을 인터페이스라고 부르고

API는 어떤앱을 만을어야하는데 서버에 내가 필요한 데이터가 존재한다고 하면
그 데이터를 받아오는 것이 API 이다.




