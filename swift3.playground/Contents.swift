import UIKit

//5 Объявить две опциональные переменные типа Double. Одной из них задать первоначальное значение. Написать функцию, которая принимает на вход опциональную переменную типа Double. Функция должна безопасно извлечь значение из входящей переменной. Если значение удалось получить - необходимо вывести его в консоль, если значение у переменной отсутствует вывести в консоль фразу "Variable can't be unwrapped". Вызвать функцию дважды с двумя ранее созданными переменными.
//

var doubleOptional: Double? = 2.2
var doubleOptional2: Double?

func printValueDouble(variable: Double?){
    if let value = variable {
        print(value)
    } else {
        print("Variable can't be unwrapped")
    }
}

printValueDouble(variable: doubleOptional)
printValueDouble(variable: doubleOptional2)


//6. Напишите программу для вывода первых 15 чисел последовательности Фибоначчи

func fibanachi(_ int: Int) -> Int {
    if int == 0 {
        return 0
    } else if int == 1 {
        return 1
    } else {
        return fibanachi(int - 1) + fibanachi(int - 2)
    }
}

fibanachi(6)
