import UIKit

print("Task N8")
//8. Напишите программу, решающую задачу: есть входящая строка формата "abc123", где сначала идет любая последовательность букв, потом число. Необходимо получить новую строку, в конце которой будет число на единицу больше предыдущего, то есть "abc124".

func incrementNumber(_ string: String) -> String {
    var result = string
    var lastNumberRange: Range<String.Index>?
    
    for number in string.components(separatedBy: CharacterSet.decimalDigits.inverted) {
        if let num = Int(number) {
            lastNumberRange = string.range(of: number)
        }
    }
    
    if let range = lastNumberRange{
        if let num = Int(string[range]) {
            let incrementNumber = num + 1
            result.replaceSubrange(range, with: String(incrementNumber))
        }
    }
    
    return result
}

var text1 = "abc123"
var text2 = "abc123de"

var increment1 = incrementNumber(text1)
var increment2 = incrementNumber(text2)

print("increment abc123 = \(increment1)")
print("increment abc123de = \(increment2)")


print("\nTask N9")
//9. Написать простое замыкание в переменной myClosure, замыкание должно выводить в консоль фразу "I love Swift". Вызвать это замыкание. Далее написать функцию, которая будет запускать заданное замыкание заданное количество раз. Объявить функцию так: func repeatTask (times: Int, task: () -> Void). Функция должна запускать times раз замыкание task . Используйте эту функцию для печати «I love Swift» 10 раз.

var myClosure = {
    print("I love Swift")
}

myClosure()

func repeatTask(times: Int, task: () -> Void) {
    for i in 0..<times {
        task()
    }
}

repeatTask(times: 10, task: myClosure)


//10. Условия: есть начальная позиция на двумерной плоскости, можно осуществлять последовательность шагов по четырем направлениям up, down, left, right. Размерность каждого шага равна 1. Создать перечисление Directions с направлениями движения. Создать переменную location с начальными координатами (0,0), создать массив элементами которого будут направления из перечисления. Положить в этот массив следующую последовательность шагов: [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]. Програмно вычислить какие будут координаты у переменной location после выполнения этой последовательности шагов.


print("\nTask N10")
enum Directions {
    case up
    case left
    case right
    case down
}

var location = (x: 0, y: 0)

var steps: [Directions] = [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]

for step in steps {
    switch step {
    case .right:
        location.x += 1
    case .left:
        location.x -= 1
    case .up:
        location.y += 1
    case .down:
        location.y -= 1
    }
}

print(location)

