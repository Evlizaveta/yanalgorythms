//В школе решили на один прямоугольный стол поставить два прямоугольных ноутбука. Ноутбуки нужно поставить так, чтобы их стороны были параллельны сторонам стола. Определите, какие размеры должен иметь стол, чтобы оба ноутбука на него поместились, и площадь стола была минимальна.

let text = readLine()!
let mas = text.split(separator: " ")

let a = Int(mas[0])!
let b = Int(mas[1])!
let c = Int(mas[2])!
let d = Int(mas[3])!

let ac = max(a, c) * (b + d)
let ad = max(a, d) * (b + c)
let bc = max(b, c) * (a + d)
let bd = max(b, d) * (a + c)
if (min(ac, ad, bc, bd)) == ac {
    print (max(a, c), (b + d))
}
else if (min(ac, ad, bc, bd)) == ad {
    print (max(a, d), (b + c))
}
else if (min(ac, ad, bc, bd)) == bc {
    print (max(b, c), (a + d))
}
else {
    print (max(b, d), (a + c))
}
