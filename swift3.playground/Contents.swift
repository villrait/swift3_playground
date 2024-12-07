import UIKit

<<<<<<< HEAD
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
=======
//5 Объявить две опциональные переменные типа Double. Одной из них задать первоначальное значение. Написать функцию, которая принимает на вход опциональную переменную типа Double. Функция должна безопасно извлечь значение из входящей переменной. Если значение удалось получить - необходимо вывести его в консоль, если значение у переменной отсутствует вывести в консоль фразу "Variable can't be unwrapped". Вызвать функцию дважды с двумя ранее созданными переменными.
//

protocol Testable {
    func runTest()
}

class TestTask: Testable {
    private func show(_ value: Double?) { // имя функции show потому что при слове print - код ломается. В ифах ошибки возникают
        if let val = value {
            print(val)
        } else {
            print("Variable can't be unwrapped")
        }
    }
    
    func runTest() {
        var doubleOptional: Double? = 2.2
        var doubleOptional2: Double?
        
        show(doubleOptional)
        show(doubleOptional2)
    }
}

//6. Напишите программу для вывода первых 15 чисел последовательности Фибоначчи

class Fibonachi: Testable {
    private func calculateFibonachi(_ int: Int) -> Int {
        if int <= 1 {
            return int
        } else {
            return calculateFibonachi(int - 1) + calculateFibonachi(int - 2)
        }
    }
    
    func runTest() {
        for i in 0...15 {
            print("calculateFibonachi: number \(i) = \(calculateFibonachi(i))")
            
        }
    }
}

//7. Напишите программу для сортировки массива, использующую метод пузырька. Сортировка должна происходить в отдельной функции, принимающей на вход исходный массив.

class Bubble: Testable {
    
    private func bubbleSort(array: [Int]) -> [Int] {
        var arr = array
        var n = arr.count
        for i in 0..<n-1 {
            for j in 0..<n-i-1 {
                if arr[j] > arr[j+1] {
                    let temp = arr [j]
                    arr[j] = arr[j+1]
                    arr[j+1] = temp
                }
            }
        }
        return arr
    }
    
    func runTest() {
        let unsortedArr = [3,2,5,1,8,0]
        let sortedArr = bubbleSort(array: unsortedArr)
        print("Bubble Sort: \(unsortedArr) -> \(sortedArr)")
    }
}

// ну или такой вариант мне более привычен и понятен(потому что чем больше в дебри логики кода начинаешь уходить, тем меньше я его понимаю)
//
//let bubble2 = [5,4,3,2,1]
//bubble2.sorted { $0 < $1 }


let tasks: [Testable] = [TestTask(), Fibonachi(), Bubble()]

for task in tasks {
    print("\n")
    task.runTest()
}
>>>>>>> release/1.0
