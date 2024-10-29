import UIKit

//8. Напишите программу, решающую задачу: есть входящая строка формата "abc123", где сначала идет любая последовательность букв, потом число. Необходимо получить новую строку, в конце которой будет число на единицу больше предыдущего, то есть "abc124".

var text = "abc123"

func addNumberToString(text: String) -> String {
    var letters = ""
    var number = 0
    var resultText = ""
    var currentNumber = ""
    
    for char in text {
        if char.isNumber {
            currentNumber += String(char)
        } else {
            letters += String(char)
            if !currentNumber.isEmpty {
                number += Int(currentNumber)!
                currentNumber = ""
            }
        }
    }
    
    if !currentNumber.isEmpty {
        number += Int(currentNumber)!
    }
    
    resultText = letters + String(number + 1)
    
    return resultText
}

var text2 = addNumberToString(text: text)


//9. Написать простое замыкание в переменной myClosure, замыкание должно выводить в консоль фразу "I love Swift". Вызвать это замыкание. Далее написать функцию, которая будет запускать заданное замыкание заданное количество раз. Объявить функцию так: func repeatTask (times: Int, task: () -> Void). Функция должна запускать times раз замыкание task . Используйте эту функцию для печати «I love Swift» 10 раз.

var myClosure = {
    print("I love Swift")
}

myClosure

func repeatTask (times: Int, task: () -> Void) {
    for i in 0..<times {
        task()
    }
}

repeatTask(times: 10, task: myClosure)
