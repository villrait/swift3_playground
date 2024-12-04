import UIKit

//5 Объявить две опциональные переменные типа Double. Одной из них задать первоначальное значение. Написать функцию, которая принимает на вход опциональную переменную типа Double. Функция должна безопасно извлечь значение из входящей переменной. Если значение удалось получить - необходимо вывести его в консоль, если значение у переменной отсутствует вывести в консоль фразу "Variable can't be unwrapped". Вызвать функцию дважды с двумя ранее созданными переменными.
//

protocol Testable {
    func runTest()
}

//8. Напишите программу, решающую задачу: есть входящая строка формата "abc123", где сначала идет любая последовательность букв, потом число. Необходимо получить новую строку, в конце которой будет число на единицу больше предыдущего, то есть "abc124".

class IncrementNumberTask: Testable {
    private func incrementNumber(_ string: String) -> String {

        var result = string
        
        guard let lastNumberSubstring = string.components(separatedBy: CharacterSet.decimalDigits.inverted).last,
              let number = Int(lastNumberSubstring),
              let lastNumberRange = string.range(of: lastNumberSubstring) else {
            return string
        }

        let incrementNumber = number + 1
        
        result.replaceSubrange(lastNumberRange, with: "\(incrementNumber)")

        return result

    }

    func runTest() {
        var text1 = "abc123"
        
        var incrementText1 = incrementNumber(text1)
        
        print("Increment text: \(text1) -> \(incrementText1)")
    }
}

//9. Написать простое замыкание в переменной myClosure, замыкание должно выводить в консоль фразу "I love Swift". Вызвать это замыкание. Далее написать функцию, которая будет запускать заданное замыкание заданное количество раз. Объявить функцию так: func repeatTask (times: Int, task: () -> Void). Функция должна запускать times раз замыкание task . Используйте эту функцию для печати «I love Swift» 10 раз.

class ClosureTask: Testable {
    var myClosure = {
        print("I love Swift")
    }

    func repeatTask(times: Int, task: () -> Void) {
        for i in 0..<times {
            task()
        }
    }

    func runTest() {
        myClosure()
        repeatTask(times: 10, task: myClosure)
    }
}


//10. Условия: есть начальная позиция на двумерной плоскости, можно осуществлять последовательность шагов по четырем направлениям up, down, left, right. Размерность каждого шага равна 1. Создать перечисление Directions с направлениями движения. Создать переменную location с начальными координатами (0,0), создать массив элементами которого будут направления из перечисления. Положить в этот массив следующую последовательность шагов: [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]. Програмно вычислить какие будут координаты у переменной location после выполнения этой последовательности шагов.

class LocationTask: Testable {
    enum Directions {
        case up
        case left
        case right
        case down
    }

    var location = (x: 0, y: 0)

    var steps: [Directions] = [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right]

    func processSteps() {
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
        return arr
    }

    func runTest() {
        print(location)
    }
}

let tasks: [Testable] = [IncrementNumberTask(), ClosureTask(), LocationTask()]

for task in tasks {
    print("\n")
    task.runTest()
}
