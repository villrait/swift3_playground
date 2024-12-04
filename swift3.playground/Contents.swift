import UIKit

//11. Создать класс Rectangle с двумя неопциональными свойствами: ширина и длина. Реализовать в этом классе метод вычисляющий и выводящий в консоль периметр прямоугольника. Создать экземпляр класса и вызвать у него этот метод.

protocol Testable {
    func  runTest()
}

class RectangleTask: Testable {
    let width: Int
    let lenght: Int
    
    init(width: Int, lenght: Int) {
        self.width = width
        self.lenght = lenght
    }
    
    private func calcPerimeter() -> Int {
        (width + lenght) * 2
    }
    
    func runTest() {
        let rectangle = calcPerimeter()
        print("Perimeter = \(rectangle)")
    }
    
}

let rectangle1 = RectangleTask(width: 4, lenght: 10)
let rectangle2 = RectangleTask(width: 3, lenght: 6)

let tasks: [Testable] = [rectangle1, rectangle2]

for task in tasks {
    task.runTest()
}


//12. Создать расширение класса Rectangle, которое будет обладать вычисляемым свойством площадь. Вывести в консоль площадь уже ранее созданного объекта.

extension RectangleTask {
    var area: Int {
        return width * lenght
    }
}

let rectangle = RectangleTask(width: 4, lenght: 10)
print("Area = \(rectangle.area)")
