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
``` // 비교 연산자
Text("\(age < anyNumber)".description)
Text("\(anyNumber < anyNumber2)".description)
Text("\(anyNumber > anyNumber2)".description)
Text("\(anyNumber <= anyNumber2)".description)
Text("\(anyNumber >= anyNumber2)".description)
Text("\(anyNumber == anyNumber2)".description)
Text("\(anyNumber != anyNumber2)".description)
```

