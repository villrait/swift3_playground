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
