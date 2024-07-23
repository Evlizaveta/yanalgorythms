//На некоторых кросс-платформенных станциях метро (как, например, «Третьяковская») на разные стороны платформы приходят поезда разных направлений. Таня договорилась встретиться с подругой на такой станции, но поскольку подруга приехала из другого часового пояса, то из-за джетлага сильно проспала, и Тане пришлось долго её ждать. Поезда всегда ходят точно по расписанию, и Таня знает, что поезд стоит на платформе ровно одну минуту, а интервал между поездами (время, в течение которого поезда у платформы нет) составляет a минут для поездов на первом пути и b минут для поездов на втором пути. То есть на первый путь приезжает поезд и стоит одну минуту, затем в течение a минут поезда у платформы нет, затем в течение одной минуты у платформы стоит следующий поезд и т. д.
//Пока Таня стояла на платформе, она насчитала n поездов на первом пути и m поездов на втором пути. Определите минимальное и максимальное время, которое Таня могла провести на платформе, или сообщите, что она точно сбилась со счёта.
//Все поезда, которые видела Таня, она наблюдала в течение всей минуты, то есть Таня не приходит и не уходит с платформы посередине той минуты, когда поезд стоит на платформе.


let a = Int(readLine()!)!
let b = Int(readLine()!)!
let n = Int(readLine()!)!
let m = Int(readLine()!)!

let mina = a * (n - 1) + n
let maxa = a * (n + 1) + n
let minb = b * (m - 1) + m
let maxb = b * (m + 1) + m

if min (maxa, maxb) >= max (mina, minb) {
    print (max(mina, minb), min(maxa, maxb))
}
else {
    print (-1)
}
