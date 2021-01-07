
import Foundation
func readNumber() {
    print("¿Cuál es el número que quieres verificar?")
    guard let input = readLine() else { return }
    verifyNumber(number: input)
}

func verifyNumber(number: String) {
    let regex = NSRegularExpression(#"(\([0-9]{2}\)\-[0-9]{2}\-[0-9]{4}\-[0-9]{4})"#)
    if regex.matches(number) == true {
        print("El número si es válido. \n")
        print("¿Te gustaría probar otro número? 1-Si, 2-No")
        let input = readLine()!
        let n = Int(input)!
        if n == 1 {
            readData()
        } else{
            return
        }
    } else {
        print("El número no es válido. \n")
        print("¿Te gustaría probar otro número? 1-Si, 2-No")
        let input = readLine()!
        let n = Int(input)!
        if n == 1 {
            readData()
        } else{
            return
        }
    }
}

extension NSRegularExpression {
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("Illegal regular expression: \(pattern).")
        }
    }
    
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
}
readNumber()