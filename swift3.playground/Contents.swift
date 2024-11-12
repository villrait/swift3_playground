import UIKit

print("Task N5")
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

class TestTask2: Testable {
    func runTest() {
        print("testing system ok")
    }
}
let tasks: [Testable] = [TestTask(), TestTask2()] // если я правильно понял, то можно было еще пару классов написать с функцией runTest и добавить их в этот массив и они бы выполнили каждый свой код (к примеру разные ПРИНТЫ вывели бы)

for task in tasks {
    task.runTest()
}


print("\nTask N6")
//6. Напишите программу для вывода первых 15 чисел последовательности Фибоначчи

class Fibonachi {
    func calculateFibonachi(_ int: Int) -> Int {
        if int <= 1 {
            return int
        } else {
            return calculateFibonachi(int - 1) + calculateFibonachi(int - 2)
        }
    }
    
    func printFibonachi() {
        for i in 0...15 {
            print("calculateFibonachi: number \(i) = \(calculateFibonachi(i))")
            
        }
    }
}

let fibonacji = Fibonachi()
fibonacji.printFibonachi()


print("\nTask N7")
//7. Напишите программу для сортировки массива, использующую метод пузырька. Сортировка должна происходить в отдельной функции, принимающей на вход исходный массив.

class Bubble { 
    
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
    
    func bubbleShow(array: [Int]) {
        print("Bubble sort: \(bubbleSort(array: array))")
    }
}

let bubble = Bubble()
bubble.bubbleShow(array: [3,2,5,1,8,0])



// ну или такой вариант мне более привычен и понятен(потому что чем больше в дебри логики кода начинаешь уходить, тем меньше я его понимаю)
//
//let bubble2 = [5,4,3,2,1]
//bubble2.sorted { $0 < $1 }
