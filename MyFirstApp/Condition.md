## 조건문 if - else 
**조건문이란 어떤 상황에서 좋은 결정을 하기 위해 사용되는 것이다.**

### If - else 선언
```
if condition {
		code
} else {
		code
}
```
**If 의 조건이 참이면 코드를 실행하고 거짓미면 else의 코드를 실행한다.**
**if만 따로 사용할 수 있고, else 는 따로 사용할 수 없다.**

```
  var randomNumber = 4
    var body: some View{
        
        if randomNumber % 2 == 0{
        Text("짝수")
        }
        else{
            Text("홀수")
        }
    }
```

##### 이 코드는 randomNumber의 값이 짝수이면 짝수라고 표시하고 홀수 이면 홀수라고 표현하는 간단한 조건문이다.
