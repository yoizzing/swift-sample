// 상속
class Shape{
    var x:Float
    var y:Float
    var width:Float
    var height:Float
    var color:String
    
    init(x:Float, y:Float, width:Float, height:Float, color:String) {
        self.x      = x
        self.y      = y
        self.width  = width
        self.height = height
        self.color  = color
    }
    
    func draw(){
        print("X: \(self.x), Y: \(self.y), Height : \(self.height), Width : \(self.width)")
        print("COLOR : \(self.color)")
    }
}

class Rectangle:Shape{             // 상속 받고자 하는 class를 : 이후에 쓰면 됨
    
    override func draw() {         // 오버라이드(override)
        print("사각형 그리기!")
        super.draw()               // 부모 method 접근
    }
    
    func moveRectangle(toX:Float, toY:Float) {
        
        if toX >= 0 && toX <= 320{
            if toY >= 0 && toY <= 480{
                self.x = toX
                self.y = toY
                print("X: \(self.x), Y: \(self.y) 로 이동함")
            }else{
                print("Y값 범위 초과")
            }
        }else{
            print("X값 범위 초과")
        }
    }
    
    func shake() {
        print("쉐킷")
    }
}

var rectangle1 = Rectangle(x: 10, y: 10, width: 100, height: 100, color : "red")
rectangle1.draw()
//rectangle1.drawRectangle()

var rectangle2 = Rectangle(x: 100, y: 100, width: 200, height: 500, color : "green")
//rectangle2.drawRectangle()

var tmpRectangle = rectangle1
tmpRectangle.x = 1000
//rectangle1.drawRectangle()
rectangle1.moveRectangle(toX: 150, toY: 250)
rectangle1.moveRectangle(toX: 320, toY: 485)

rectangle1.x = 499
rectangle1.y = 1200

class Circle:Shape{
    func drawCircle() {
        print("땡그리 그리기!")
        super.draw() // 부모 method 접근
    }
}

var rectangle = Rectangle(x: 10, y: 10, width: 100, height: 100, color: "Yellow")
rectangle1.draw()
//rectangle.drawRectangle()
var circle = Circle(x: 50, y: 50, width: 120, height: 130, color: "Red")
circle.drawCircle()

class MoveRectangle:Rectangle{
    final func move(toX:Float, toY:Float) { // MoveRectangle을 상속받은 class는 move함수는 재저의할 수 없음(keyword : final)
        self.x = toX
        self.y = toY
        print("\(self.x), \(self.y)로 이동함.")
    }
}

var moveRectangle = MoveRectangle(x: 10, y: 10, width: 100, height: 100, color: "Cyan")
moveRectangle.move(toX: 30, toY: 60)

print("===========")
var tmp:Shape
tmp = rectangle1 // type을 부모type으로 변경 : up casting --> 형을(type) 부모로 변경 // as로 타입 변환
                 // type을 자식으로 변경하는 것은 down casting으로 하고 as? or as! 사용
//tmp. // tmp에 있는 property에만 나옴 Rectangle에서 새로 정의된 property는 접근 불가~~
tmp.draw()

tmp = circle
tmp.draw()


// Enumeration(열거형) 선언
//enum CharacterAction:String{
//    case idle = "쉬기"
//    case walk = "걷기"
//    case run  = "달리기"
//    case jump = "점프"
//}
//
//class Character{
//    let name:String
//    var action:CharacterAction
//    
//    init(name:String) {
//        self.name   = name
//        self.action = CharacterAction.idle
//    }
//    
//    func run() {
//        self.action = CharacterAction.run
//    }
//    
//    func printAction() {
//        print(self.action.rawValue) // rawValue를 이용해 출력
//    }
//}
//let character = Character(name:"홍길동")
//character.printAction()
//character.run()
//character.printAction()

enum CharacterAction{
    case idle
    case walk(Int)
    case run (Int)
    case jump(Int)
}

class Character{
    let name:String
    var action:CharacterAction
    
    init(name:String) {
        self.name   = name
        self.action = CharacterAction.idle
    }
    
    func run(speed:Int) {
        self.action = CharacterAction.run(speed)
        switch self.action {
        case let .run(value) where value >= 120:  // action이 run인지를...확인 . 으로..해서 run이면 value 할당
            print("현재 시속 \(value)km. 과속으로 달리는 중입니다.")
        case let .run(value) where value < 120:
            print("현재 시속 \(value)km. 정상속도입니다.")
        default:
            print("인식불가")
        }
    }
}

let character = Character(name: "홍길동")
character.run(speed: 120)



