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

