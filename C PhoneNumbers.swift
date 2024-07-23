//Телефонные номера в адресной книге мобильного телефона имеют один из следующих форматов: +7<код><номер>, 8<код><номер>, <номер>, где <номер> — это семь цифр, а <код> — это три цифры или три цифры в круглых скобках. Если код не указан, то считается, что он равен 495. Кроме того, в записи телефонного номера может стоять знак “-” между любыми двумя цифрами (см. пример). На данный момент в адресной книге телефона Васи записано всего три телефонных номера, и он хочет записать туда еще один. Но он не может понять, не записан ли уже такой номер в телефонной книге. Помогите ему! Два телефонных номера совпадают, если у них равны коды и равны номера. Например, +7(916)0123456 и 89160123456 — это один и тот же номер.

import Foundation

func ToNumbers (str: String) -> [String] {
    var ans: [String] = str.components(separatedBy: ["-", "(", ")", "+"])
    var realans: [String] = []
    for j in (0...(ans.count - 1)) {
        realans.append (ans[j])
    }
    if (realans.joined(separator: "")).count < 11 {
        realans.insert("8495", at: 0)
    }
    else if realans[0] == "" {
        let qwe = realans[1].index(realans[1].startIndex, offsetBy: 0)
        realans[1].remove(at: qwe)
        realans[0] = "8"
    }
    return(realans)
}

let finAnss = (readLine()!)
let a = (readLine()!)
let b = (readLine()!)
let c = (readLine()!)
let finAns = Int(ToNumbers(str: finAnss).joined(separator: ""))

Int((ToNumbers(str: a)).joined(separator: "")) == finAns ? print ("YES") : print ("NO")
Int((ToNumbers(str: b)).joined(separator: "")) == finAns ? print ("YES") : print ("NO")
Int((ToNumbers(str: c)).joined(separator: "")) == finAns ? print ("YES") : print ("NO")
