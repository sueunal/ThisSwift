# 2023. 1. 28.
### Variable 이란?
변수, 코딩에서 가장 많이 사용되는 모르면 안되는 것이다.

변수란 변 하는 수라는 뜻으로

`var name = "HI Sueun`

작성을 하면 자신의 이름이 변수에 대입된다.

개발을 하면서 변수라는 것은 유용하게 어떤 값을 저장하는 것에 쓰인다.

### 변수의 종류

변수는 담는 데이터에 따라 종류가 달라진다.

#### 담는 종류에는
- 정수
- 문자열
- 실수
- Bool

존재한다.

```
let name : String = “Sueun
let age : Int = 20
let height : Double = 183.4
let hasJob : Bool = true
```
스위프트에서는 문자열 안에 변수를 사용하려면 “변수이름 : \(Variable Name)” 으로 할 수 있다.

`Text(“Hello, \(name), \(age,\(height),\(hasJob)”)`

**텍스트안에서 변수를 이렇게 표현한다.**

## 연산자
**연산자에는 대입, 사칙, 비교 연산자가 존재한다.**

#### 대입 연산자
**대입은 어떤값을 할당하거나 변수를 처음 선언할 때 초기값으로 대입하기 위해 사용되곤한다.**
``` // 대입 연산자
    let name = “Hi Sueun!”
    var age = 24
    var anyNumber = 56
    var anyNumber2 = 7
```
#### 사칙 연산자
**사칙 연산자는 주로 "+, -, &, /, %" 등의 연산을 한다.**

**반환값은 두 값이 정수라면 정수 값을 반환하고 실수 값이면 실수를 반환한다.**

**두 값의 타입이 일치 하지 않는다면 컴파일에러가 발생한다.**
``` // 사칙 연산자
Text("\(age + anyNumber)")
Text("\(age - anyNumber)")
Text("\(age * anyNumber)")
Text("\(age / anyNumber)")
```

#### 비교 연산자
**두 값을 비교하는 연산을 하며  반환값은 Bool 으로 true or false 를 반환한다.**

비교연산자의 결과 값은 .description을 입력해주어야 화면에 표시 된다.

VStack 에 들어갈 수 있는 값은 10개 이다.
``` // 비교 연산자
Text("\(age < anyNumber)".description)
Text("\(anyNumber < anyNumber2)".description)
Text("\(anyNumber > anyNumber2)".description)
Text("\(anyNumber <= anyNumber2)".description)
Text("\(anyNumber >= anyNumber2)".description)
Text("\(anyNumber == anyNumber2)".description)
Text("\(anyNumber != anyNumber2)".description)
```

## 콜렉션 타입
콜렉션 타입에는 
Array Dictionary Set 이 존재한다.
배열, 사전, 집합으로 해석되며 이에 따른 각각의 특징이 존재한다.

#### Array
##### 선언 
`let names : [String]`
**String 뿐만아니라 Int, Double 과 같은 다른 타입이 올 수 있다.**
**배열은 한 타입의 데이터가 나열 되는 것으로 표현된다.**

##### 활용 예시
```
let names : [String] = [“Sueun”, “Leeo”, “Olivia”]

Text(names[0])
Text(names[1])
Text(names[2])
```
**프로그래밍에서 순서는 대부분 0부터  처음을 의미하며 배열은 0, 1, 2, 등과 같이 값에 인텍스로 접근을 한다.**

#### Dictionary
사전이라는 의미로 데이터에 value, key 가 묶음 형태로 존재한다.
##### 선언
`let engKrDictionary : [String:String]`
**딕셔너리는 [String:String] 타입을 가지고 있다.**

##### 활용 예시
```
let e ngKrDictionary : [String:String] =  ["Apple":"사과", "Banana":"바나나","Coconut":"코코넛"]

Text(EngKrDictionary["Apple"]!)
Text(EngKrDictionary["Banana"]!)
Text(EngKrDictionary["Coconut"]!)
```
**딕셔너리는 값에 Key 값으로 접근을 한다 apple , banana 의 값이 Key 값으로 불리며**
**Key 값에 맞는 데이터(Value)를 가져올 수 있다.**


#### Set
**집합은 중복된 값을 가질 수 없는 것이 특징이며, 교집합과 합집합이 가능하다.**

##### 선언
```
let houseAnimals :  Set = [“🐶”,”🐱”,”🐦”,”🐦”]
let farmAnimals : Set = [“🦅”,”🐓”,”🐑”,”🐶”,”🐱”,”🐶”]
```
**Set 이라는 타입을 사용하고 배열처럼 값을 넣어준다.**

##### 활용 예시
```
Text (houseAnimals.description)
Text (houseAnimals.union(farmAnimals).description)
```

**중복된 값을 제거 해서 나온 것이 1번 예시이고** 
**2번 예시는 합집합을 한 것이다.**
