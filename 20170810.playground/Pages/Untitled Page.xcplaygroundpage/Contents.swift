func functionName( _ name:String ) -> String {
    // 함수 내용
    
    var name = "고길동"
    // print("Hello, \(name)")
    return name
}

let rslt = functionName("홍길동")

//  참조값
func addNum(num1: inout Int, num2: Int){  // inout을 선언하면 참조값으로 매개변수 전달 // 원래 기본값은 값 복사가 됨
    num1 = num1 + num2
}

var num:Int = 10
addNum(num1: &num, num2: 5) // &를 해서 참조값전달 -> inout과 쌍임
print(num)

// 변수의 생명 주기
do{
    var age = 10
    do{
        var age = 20
        // 같은 공간에서는 동일한 이름 생성 불가
        // var age = 5
        var name = "홍길동"
        print("Second age = \(age)")
    }
    do{
        // 상위 공간이 아닌 같거나 하위 공간에 선언된 변수에 접근 불가
        // print(name)
    }
    print("First age = \(age)")
}
// 일급함수
// 클로저
// 익명함수
// 고차함수

// class : instance에 대한 정의르 담은 code block
// class vs struct
// struct -- 구조체 안에 변수와 함수가 있음(구조체나 클래스 안의 변수는 property라고 하고 함수는 메소드라고 함)
// struct 선언
struct Size{
    var width:Float
    var height:Float
    
    func description(){
        print("Width: \(self.width), Height : \(self.height)")
    }
}

var myStruct = Size(width: 1024, height: 768)
myStruct.description()
myStruct.width
myStruct.height
myStruct.width = 1980
myStruct.height = 1024

myStruct.width
myStruct.height
myStruct.description()

var newSize:Size
newSize = Size(width: 3026, height: 2084)
newSize.height
newSize.width
newSize.description()

var mySize1 = Size(width: 100, height: 100)
var mySize2 = Size(width: 10, height: 10)

// class -- 클래스도 변수와 함수를 가질 수 있음
// class 선언 -- 클래스, 구조체,  열거형의 첫글자는 대문자로 시작하세용
//class Book{
//    var title:String!
//    var writer:String!
//}

// 클래스는 구조체처럼 선언하면 에러가 남 - 구조체는 선언시 초기화를 강제로 하기 때문임, 클래스는 초기화를 강제하징 않음
//                                          그래서 초기화를 할 수 있는 방법을 직접 만들거나, 초기화를 안해도 되도록 선언(optional)


// optional을 이용
class Pserson1{
    var name:String?   // optional
    var email:String?  // optional
    var age:Int?       // optional
    
    func run() {
        print("run!!")
    }
}

let person1   = Pserson1()
person1.name  = "홍길동"
person1.age   = 22
person1.email = "hong@gmail.com"

// 초기화 함수 이용
class Pserson2{
    var name:String
    var email:String
    var age:Int
    
    // class의 초기화 함수 -- 초기화함수 or 생성자 함수?
    // 초기화를 입맛대로 만들어서 사용 가능
    init(name:String, email:String, age:Int){
        self.name  = name
        self.age   = age
        self.email = email
    }
    
    init(){
        self.name  = "김아무개"
        self.age   = 222
        self.email = "what!!"
    }
    
    func run() {
        print("run!!")
    }
}

var person2 = Pserson2(name: "홍길동", email: "hong@gmeil.com", age: 39 )
let person3 = Pserson2(name: "김철수", email: "kim@gmail.com", age: 33)
person3.age = 44 // person3이 let임에도 불구하고 참조값이기 때문에 변경이 가능함
                 // 구조체는 let으로 선언되어 있으면 해당 값 변경시, 제약이 있음
                 // 구조체는 값복사, 클래스는 참조
dump(person3)    // dump() 특정 변수의 값들을 출력

// person3 = person2


// 저장 property - stored property(변수)
struct Point{
    var x:Float
    var y:Float
}

class Person5{
    var name:String?
    var age:Int?
}

// 연산 property - computed property
import Foundation
struct Person7{
    var firstName:String // 저장 property
    var lastName:String  // 저장 property
    
    var fullName:String{  // 연산 property -> 값을 저장할 수 없고, 이미 있는 저장property를 이용해 사용
        get{  // 값을 읽으려고 할 때는 get실행
            return firstName + " " + lastName
        }
        
        set{  // 값을 셋팅할 때는 set이 실행
            let index      = newValue.index(newValue.startIndex, offsetBy:1) // set에서는 들어오는 값을 newValue로 사용할 수 있음
            self.lastName  = newValue.substring(to: index)
            self.firstName = newValue.substring(from:index)
        }
    }
}

var p1 = Person7(firstName:"길동", lastName: "홍")
p1.fullName = "김민수"
p1.firstName
p1.lastName
print(p1.fullName)

// 지연 저장 property(lazy-store property)
class Engine{
    init(){
        print("Engine")
    }
}

class Car{
    lazy var engine:Engine = Engine() // lazy init property(지연 저장 property, 실제 해당 property에 접근해서 사용할 때 만들어 짐)
}

let car = Car()
car.engine


// property observer --
struct Person9{
    var age:Int?{
        willSet{ // property oberver를 가진 저장 property, willSet은 값이 저장되기 직전에...호출, newValue는 들어올 값
            if newValue! > 18{
                print("성인입니다")
            } else{
                print("미성년자입니다.")
            }
        }
        
        didSet{ // property oberver를 가진 저장 property did은 값이 할당된 이후...호출, oldValue 사용
            if oldValue! > 18{
                print("## 성인입니다.")
            } else{
                print("## 미성년자입니다.")
                age = nil
            }
        }
    }
}

var pp1 = Person9(age: 10)
pp1.age = 18


//  type property -- static
struct Size1{
    static var maxWidth:Int = 800
    static var maxHeight:Int = 600
    
    static var maxPixel:Int{
        return maxWidth * maxHeight
    }
}

var max = Size1.maxPixel

class Grade{
    static let max:Float = 100
    
    // 클래스의 연산 프로퍼티에서만 가능. 상속 가능
    // 연산 프로퍼티에는 let 사용 불가
    
    class var min:Float{ // class로 만들어진 type property는 상속 가능(static은 상속 불가), type property 선언 방법은 static과 class임!
                         // class와 static은 역할 같지만 class만 상속 가능
        return max * 0.2
    }
}

let maxrade = Grade.max
let minGrade = Grade.min

class Person10{
    var name:String!
    var age:Int!
    
    func jump(){
        if self.age > 30{
            print("\(self.name)님 30cm 점프!")
        } else{
            print("\(self.name)님 1m 점프")
        }
    }
    
    func run(){
        if self.age > 30{
            print("\(self.name)님 느리게 달림.")
        } else{
            print("\(self.name)님 매우 빠르게 달림.")
        }
    }
    
    static let maxAge = 100
    
    class func calcBMI(height:Int, weight:Int) -> String{
        let result = Float(weight) / (Float(height*height) / 010001)
        let returnMsg:String
        
        print(result)
        
        if result >= 24.9{
            returnMsg = "비만"
        }else if result >= 22.9 && result < 24.9{
            returnMsg = "과체중"
        }else if result >= 18.5 && result < 22.9{
            returnMsg = "정상"
        }else if result < 1.5{
            returnMsg = "저체중"
        }else{
            returnMsg = "에러"
        }
        
        return returnMsg
    }
}

let ppppp = Person10()
ppppp.age = 30
ppppp.name = "홍길동"

Person10.calcBMI(height: 178, weight: 72)
let bmi = Person10.calcBMI(height: 178, weight: 72)
print(bmi)


// 상속

