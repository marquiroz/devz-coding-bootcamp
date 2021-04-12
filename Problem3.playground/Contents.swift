/*
 Dado un índice de renglón, regresa el renglón correspondiente del triángulo de Pascal.
 In: 0
 Out: [1]
 
 In: 3
 Out: [1,3,3,1]
 */

func pascal(at line: Int, pascalLine: [Int]) -> [Int] {
    if line == 0 {
        return pascalLine
    }
    
    var nextLine: [Int] = [1]
    for (index, value) in pascalLine.enumerated() {
        if pascalLine.count > index + 1 {
            let nextIndex = index + 1
            nextLine.append(value + pascalLine[nextIndex])
        } else {
            nextLine.append(1)
        }
    }
    
    return pascal(at: line - 1, pascalLine: nextLine)
}

func getPascalLine(at line: Int) -> [Int] {
    return  pascal(at: line, pascalLine: [1])
}

//Tests
getPascalLine(at: 0)
getPascalLine(at: 3)
