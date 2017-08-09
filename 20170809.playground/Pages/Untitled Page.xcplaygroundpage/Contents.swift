var myAge = 30
var yourAge:Int
let myName:String


myAge = 40
myName = "Aiden"

var myInt:Int   = 9223372036854775807

var ssInt:Int8  = 127
var sInt :Int16 = 32767
var mInt :Int32 = 2147483647
var lInt :Int64 = 9223372036854775807

print(myInt)
//
var uInt:UInt = 4


//
var tmpFloat = 1.2345
var myDouble:Double = 1.123456789123456789 // 소수점 들어가면 무조건 double로 됨;;

// Bool type
var myBool:Bool = true

// String type
var myString:String = "Hello, World!!"

// Character type
var myCharacter:Character = "H"

myString.characters
myString.hasPrefix("xxx")


var age = 30
type(of: age)

var name = "홍길동"
type(of: name)

var isEnabled = true
type(of: isEnabled)

var isDouble = 3.1234567
type(of: isDouble)
// annotation - 타입명시

var uuAge:Int
uuAge = 30
type(of: uuAge)

var uuFloat = 3.123
type(of: uuFloat)

var uuNewFloat:Float = 3.123
type(of: uuNewFloat)

var uuUInt:UInt = 30
type(of: uuUInt)

var uuChar = "a"
type(of: uuChar)

var uuNewChar:Character = "a"
type(of: uuNewChar)


// 문자열 템플릿
var userName:String = "홍길동"
var userAge:Int = 24
var welcomMsg:String = "\(userAge)살 \(userName)님 환영합니다."
var werlcomeMsg:String = String(userAge) + "살 " + userName + "님 환영합니다."


var kkAge = String(32)
type(of: kkAge)

// 제어문
// [반복문 : for ~ in 구문]
/*
for(int i = 0 ; i < 10 ; i ++){
    //  반복될 코드
}*/

for i in 1...5{
    //반복될 코드 1~5
    print(i)
}


for i in 1..<5{
    // 5 제외 1~4
    print(i)
}

// 상수 생략
for _ in 1...5{
    print("Hello")

}

for i in 1...10{
    for j in 1...10{
        print("for")
    }
}



for i in 1...9{
    print("2 * \(i) = \(2*i)")
}


for i in 1...9{
    for j in 1...9{
        print("\(i) * \(j) = \(i*j)")
        if j==9 {
            print("-----------")
        }
    }
}


// while문
var a = 9
while a < 10 {
    a = a+1
    print("A = \(a)")
}

// repeat ~ while구문

var  b = 10
repeat{
    b = b + 1
    print("B = \(b)")
}while b < 10


var a1 = 10
var b1 = 20

// 조건문
if a1 < b1 {
    print("a1는 b1보다 크다.")
}

// if ~ else 문

var a2 = 10
var b2 = 20

if a2 > b2 {
    print("a2는 b2보다 크다")
}else{
    print("a2는 b2보다 작거나 같다")
}


// if ~ else if 문

var a3 = 20
var b3 = 20

if a3 > b3 {
    print("a3은 b3보다 크다")
} else if a3 < b3{
    print("b3은 a3보다 크다")
} else{
    print("a3과 b3은 같다")
}


// 중첩 if문
var hongName = "홍길동"
var hongAge = 23

if hongName == "홍길동"{
    if hongAge > 19{
        print("성인 홍길동")
    }else{
        print("미성년자 홍길동")
    }

} else{
    print("인식불가")
}

// guard 구문 -- 특정한 조건이 아닐 때 동작하는 구문

func myFunc(param:Int){
    guard param != 0 else {
        return
    }
    print("Param = \(param)")
}

myFunc(param: 0)


// switch구문 -- swift는 기본적으로 break가 있음
let opt = 2

switch opt {
case 0:
    print("옵션은 0입니다.")
case 1:
    print("옵션은 1입니다.")
case 2:
    print("옵션은 2입니다.")
default:
    print("인식 불가")
}

// fallthrough문
 let englishName = "Daniel"

switch englishName {
case "DANIEL":
    print("영어 이름은 다니엘")
default:
    print("인식 불가")
}


switch englishName {
case "Daniel":
    fallthrough
case "daniel":
    fallthrough
case "DANIEL":
    print("영어이름은 다니엘")
default :
    print("인식 불가")
}


// 다수의 case문
let keyboard = "해피해킹"

switch keyboard {
case "해피해킹", "리얼포스":
    print("비싼 키보드")
case "마제스터치":
    print("기계식 키보드")
default:
    print("인식 불가")
}


// 튜플
var p1 = ("장발산", 23)

switch p1 {
case let (name, 23): // let이 있으면 아펭 있는 값는 무조건 name에 할당
    print("23살의 \(name)입니다.")
default:
    print("인식 불가")
}

// 범위연산자
var height = 170
switch height {
case 0..<170:
    print("170 미만")
case 170..<180:
    print("180 미만")
default:
    print("인식 불가")
}

// where
var p2 = ("고길동", 44)

switch p2 {
case let(name, age) where age >= 40:
    print("40대 \(name)님.")
case let(name, age) where age >= 30:
    print("30대 \(name)님")
default:
    print("인식 불가")
}




