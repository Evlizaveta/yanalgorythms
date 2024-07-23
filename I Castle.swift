//За многие годы заточения узник замка Иф проделал в стене прямоугольное отверстие размером D × E. Замок Иф сложен из кирпичей, размером A × B × C. Определите, сможет ли узник выбрасывать кирпичи в море через это отверстие, если стороны кирпича должны быть параллельны сторонам отверстия.

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let e = Int(readLine()!)!

var masa = [a, b, c]
masa = masa.sorted()
var masb = [d, e]
masb = masb.sorted()
((masa[0] <= masb [0]) && (masa[1] <= masb[1])) ? print("YES") : print("NO")
