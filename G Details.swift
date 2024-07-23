//Имеется N кг металлического сплава. Из него изготавливают заготовки массой K кг каждая. После этого из каждой заготовки вытачиваются детали массой M кг каждая (из каждой заготовки вытачивают максимально возможное количество деталей). Если от заготовок после этого что-то остается, то этот материал возвращают к началу производственного цикла и сплавляют с тем, что осталось при изготовлении заготовок. Если того сплава, который получился, достаточно для изготовления хотя бы одной заготовки, то из него снова изготавливают заготовки, из них – детали и т.д. Напишите программу, которая вычислит, какое количество деталей может быть получено по этой технологии из имеющихся исходно N кг сплава.

import Foundation

let text = readLine()!
let mas = text.split(separator: " ")

var weightOfAlloy = Int(mas[0])!
let weightOfBillets = Int(mas[1])!
let weightOfDetails = Int(mas[2])!
var answer = 0

Billets()

func Billets() -> () {
    let amountOfBillets = Int(weightOfAlloy / weightOfBillets)
    let remains = (weightOfAlloy % weightOfBillets)
    Details(amountOfBillets: amountOfBillets, remain: remains)
}

func Details (amountOfBillets: Int, remain: Int) -> () {
    let amountOfDetails = Int(weightOfBillets / weightOfDetails) * amountOfBillets
    if amountOfDetails != 0 {
        var remains = remain
        remains += (weightOfBillets % weightOfDetails) * amountOfBillets
        answer += amountOfDetails
        
        if remains >= weightOfBillets {
            weightOfAlloy = remains
            Billets()
        }
        else {
            print (answer)
        }
    }
    else {
        print (0)
    }
}

