//Dado a y b como numeros enteros, realizar la sumatoria de
// 1^a + 2^a + 3^a + b^a

func addNumbers(base : Int, exp: Int) -> Int {
    var total = 0
    var pot = 1
    for b in 1...base {
        print("b",b)
        for _ in 1...exp {
            pot *= b
            print("pot ",pot)

        }
        
        total += pot
        pot = 1
        print("total", total)
    }

    return total    
}

let resultado = addNumbers(base: 4, exp: 3)
print(resultado)