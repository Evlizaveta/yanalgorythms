//Даны три натуральных числа. Возможно ли построить треугольник с такими сторонами. Если это возможно, выведите строку YES, иначе выведите строку NO.
//Треугольник — это три точки, не лежащие на одной прямой.

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
var sumM = a + b + c - max(a, b, c)
if sumM > max(a,b, c){
    print ("YES")
}
else {
    print ("NO")
}


