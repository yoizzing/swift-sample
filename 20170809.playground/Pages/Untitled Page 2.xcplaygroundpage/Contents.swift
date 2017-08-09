// tuple 선언
let anVal = ("홍길동", 23, 170.5, "010-555-5555")
anVal.0
anVal.1
anVal.2
anVal.3


let person1:(String, Int, String) = ("김철수", 22, "010-5555-5555")

let (name, age, _ ) = person1
name
age
// phoneNumber


func etUserInfo() -> (String, Int, String){
    return ("고길동", 23, "010-111-1111")
}

// Array
// Array 선언
var arr1:Array<String>
var arr2:[String]

// 선언된 Array 초기화
arr1 = Array()
arr1 = Array<String>()

arr2 = [String]()
arr2 = []

// Array 선언과 초기화
var arr3 = Array<String>()
var arr4 = [String]()

// Array 아이템 추가
var fruits = ["사과", "딸기", "바나나"]

print("과일의 수는 \(fruits.count) 개입니다")
fruits.append("수박")
print("과일의 수는 \(fruits.count) 개입니다")

fruits.insert("망고", at: 0)
fruits.append(contentsOf: ["메론", "복숭아"]) // contentsOf를 통해 한 번에 다수의 item추가 가능

for fruit in fruits{
    print(fruit)
}

// 빈 배열 체크
if fruits.isEmpty {
    print("과일이 없습니다.")
}

fruits[0] = "%%%%"
fruits[1...2] = ["####", "$$$$"]
fruits
fruits[4...6] = ["----"]
fruits


// dictionary --- key-value 조합
var dict1:Dictionary<String, Int>
var dict2:[String:AnyObject]

// dictionary 초기화
dict1 = Dictionary()
dict1 = Dictionary<String, Int>()
dict2 = [String:AnyObject]()
dict2 = [:]


// dictionary 선언과 초기화
var person = ["name" : "홍길동", "age" : "23", "phoneNumber" : "010-5555-5555"]

var color = [String:Int]()
color["red"] = 23
color["green"] = 255
color["blue"] = 16

// dictionary 빈 값 확인
if color.isEmpty {
    print("빈 딕녀너리입니다")
}

print(color["red"]!)

// dictionary 값 변경
color["red"] = 166
color.updateValue(122, forKey: "blue") // 이전 값을 return 해줌

// dictionary 값 추가
color.updateValue(0, forKey: "alpha") // 기존에 없는 새로운 key로 해주면 추가됨
print(color)

// dictionary값 삭제
color["alpha"] = nil
print(color)

if let removed = color.removeValue(forKey: "red"){
    print("\(removed) 삭제됨.")
}

print(color)

// dictionary 탐색
for(key,value) in  color{
    print("KEY : \(key), VALUE : \(value)")
}



// Set 선언 -- 특정 type으로 묶게 됨
var station1:Set<String>
// set 초기화
station1 = []
station1 = ["강남역", "교대역", "잠실역"]

// set 선언과 초기화
var fruit:Set = ["딸기", "바나나", "수박"]
var station2 = Set<String>()

// Set에 item 추가
station2.insert("을지로입구")
station2.insert("서울역")

// set 빈 값 확인
if station2.isEmpty{
    print("빈 set입니다")
}

// set item 삭제
station2.remove("서울역")
print(station2)


// set의 집합연산
var team1:Set = ["김철수", "홍길동"]
var team2:Set = ["박수홍", "김철수", "고길동"]

team1.intersection(team2)
team1.symmetricDifference(team2)
team1.union(team2)
team1.subtract(team2)

// Set으ㅢ 포함관계
var colorA : Set = ["Black", "Brown", "Yellow", "Blue", "White"]
var colorB : Set = ["Yellow", "White"]

colorB.isSubset(of: colorA)
colorA.isSuperset(of: colorB)
colorB.isStrictSubset(of: colorA)
colorA.isDisjoint(with: colorB)

// optional
// optional 선언

let firstName:String? // ? 를 달면 optional
firstName="길동"

let lastName:String?
lastName="홍"

var tempAge:Int? // optional로 선언해야 null(nil) 할당 가능
tempAge = nil
tempAge = 30

// optional 강제 해제(forceUnwrapping) -- ! 를 사용하면 optional string에서 string으로 원래 type으로 변환됨
// forceUnwrapping은 값이 확실히 있을 때 사용해야 함
 var fullName:String = lastName! + firstName!

// if문을 이용해 optional 바인딩, 값이 있으면 name 할당?
if let name = firstName {
    var name = "이름은" + name + "입니다."
}

if let first = firstName, let last = lastName{
    var name = first + " " + last
}

// 비교 연산에서는 optional 해제하지 않아도 욈
var aage:Int? = 30

if aage == 30{
    print("30살입니다")
}

// 묵시적 optional 해제
// 컴파일러에 의해 optional 해제가 이루어져 일반 변수처럼 사용할 수 있다.
// 형식상 optional을 써야하는 경우를 제외하고는 사용하지 않는 것이 좋음
// 주로 class나 struct의 property처럼 초기화 시점이 명확하지 않은 겨우에 사용됨

var nameStr:String!
nameStr = "김철수"

let restultStr = nameStr + "입니다."

// optional chain
struct Position{
    var x:Int?
}

// function 정의
// func 함수이름(매개변수이름:매개변수 타입,...) -> 리턴타입{ 
//       실행코드
//      return 반환값
//      }


func helloWorld(){
    print("Hello, World!")
}

helloWorld()

// 매게변수 없고, 리턴값 있는 함수
func getDate() -> String{
    return "2017-01-01"
}

var date = getDate()

// 매개변수 있고, 반환값 없는 함수
func setUser(username:String){
    print("\(username)님 환영합니다.")
}

setUser(username: "홍길동")



// 매개벼수, 반환값 모두 있는 함수
func add(firstNum:Int, secondNUm:Int) -> Int{
    return firstNum + secondNUm
}

var result = add(firstNum: 1, secondNUm: 2)

// 튜플 타입 반환 함수
func getNameAndAge() -> (String, Int){
    return ("홍길동", 22)
}
let (uuname, uuage) = getNameAndAge()


typealias size = (Int,Int) // type명 지정

func getSize() -> size{
    return (2000, 1000)
}

print(getSize())



// 매게배녀수 명
// 외부, 내부 매개변수명 외부엔 qname, id, email이 노출되지만 내부에서는 userName, userId, userEmail이 사용됨
func addUser(qname userName:String, id userId:String, email userEmail:String){
    let param1 = userName
    let param2 = userId
    let param3 = userEmail
}

addUser(qname:"홍길동", id:"hont77", email:"hong77@email")

// 매개변수 명 생략
func addPerson(_ name:String, _ id:String){
    let param1 = name
    let param2 = id
}

addPerson("홍길동", "hong")

// 가변인자
func average(user:String, scores:Int...){
    var tot:Int = 0
    for score in scores{
        tot += score
    }
    let avg = tot / scores.count
    print("\(user)님의 평균은 \(avg)점입니다.")
}

average(user: "hong77", scores: 100, 100 ,300, 100, 90)

// 기본값
func setNameAndAge(user:String, age:Int = 0){
    print("\(user)님 나이는 \(age)입니다.")
}

setNameAndAge(user: "홍길동")
setNameAndAge(user: "김길동", age: 23)






