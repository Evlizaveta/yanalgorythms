//Решите в целых числах уравнение:
//,
//a, b, c – данные целые числа: найдите все решения или сообщите, что решений в целых числах нет.


let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
if c < 0 {
    print ("NO SOLUTION")
}
else if a == 0 {
    if (b == c * c) && (b >= 0) {
        print ("MANY SOLUTIONS")
    }
    else {
        print ("NO SOLUTION")
    }
}
else {
    let x = ((c * c) - b) / a
    if ((a * x + b) >= 0) && (((c * c) - b) % a == 0) {
        print (Int(x))
    }
    else {
        print ("NO SOLUTION")
    }
}


