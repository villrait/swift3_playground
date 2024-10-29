import UIKit

//11. Создать класс Rectangle с двумя неопциональными свойствами: ширина и длина. Реализовать в этом классе метод вычисляющий и выводящий в консоль периметр прямоугольника. Создать экземпляр класса и вызвать у него этот метод.

class Rectangle {
    var width: Int
    var length: Int
    
    init(width: Int, length: Int) {
        self.width = width
        self.length = length
    }
    
    func perimeterCalc() {
        var p = 0
        p = (width + length) * 2
        print("reimetr = \(p)")
    }
}

var rectangle = Rectangle(width: 5, length: 10)

rectangle.perimeterCalc()


//12. Создать расширение класса Rectangle, которое будет обладать вычисляемым свойством площадь. Вывести в консоль площадь уже ранее созданного объекта.

extension Rectangle {
    var area: Int {
        return width * length
    }
}

print("area = \(rectangle.area)")
