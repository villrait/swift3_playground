import UIKit

//11. Создать класс Rectangle с двумя неопциональными свойствами: ширина и длина. Реализовать в этом классе метод вычисляющий и выводящий в консоль периметр прямоугольника. Создать экземпляр класса и вызвать у него этот метод.

protocol Testable {
    func  runTest()
}

class RectangleTask: Testable {
    let width = 4
    let lenght = 10
    
    private func perimeterCalc() -> Int {

        let p = (width + lenght) * 2
        return p
    }
    
    func runTest() {
        var rectangle = perimeterCalc()
        print("Perimeter = \(rectangle)")
    }
    
}

let tasks: [Testable] = [RectangleTask()]

for task in tasks {
    task.runTest()
}


//12. Создать расширение класса Rectangle, которое будет обладать вычисляемым свойством площадь. Вывести в консоль площадь уже ранее созданного объекта.

extension RectangleTask {
    var area: Int {
        return width * lenght
    }
}

let rectangle = RectangleTask()
print("Area = \(rectangle.area)")
