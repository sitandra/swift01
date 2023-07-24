//
//  main.swift
//  swift01
//
//  Created by Юлия Дебелова on 24.07.2023.
//

import Foundation

/* 1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
 Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).
*/

let tea: [String: Double] = ["black": 300, "green": 250, "jasmin": 500];
let orderList: [String] = ["black", "black", "jasmin", "black", "green"];
for (index, value) in orderList.enumerated() {
    print("Num: \(index+1), Tea: \(value), Cost: \(tea[value] ?? 0)")
}


/* 2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
*/
let array: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil];
var newArray: [Int] = []
for value in array{
    if (value != nil && value != 0 && value != 4) {
        newArray.append(value ?? 0)
    }
}
newArray.sort()
print(newArray)


/* 3. Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.
 */

func generatePowerOfTwoArray(length: Int) -> [Int] {
    if (length < 1) {
        return [Int]()
    }
    var array: [Int] = [1]
    for i in 0..<length-1 {
        array.append(2 << i)
    }
    return array
}
print(generatePowerOfTwoArray(length: 10))

