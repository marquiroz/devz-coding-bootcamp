import Foundation

/*
 Dada una matriz NxN, escribe un programa que rote la matriz 90o en sentido horario.
 ¿Puedes hacerlo sin utilizar otra matriz o vector?
In:
 [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
 ]
 Out:
 [
    [6, 3, 0],
    [7, 4, 1],
    [8, 5, 2]
 ]
 */

func rotateMatrix(_ matrix: [[Int]]) -> [[Int]] {
    var newMatrix: [[Int]] = []
    for index in 0..<matrix.count {
        let row = matrix[matrix.count-1-index]
        for rowIndex in 0..<row.count {
            let newValue = row[rowIndex]
            if newMatrix.indices.contains(rowIndex) {
                newMatrix[rowIndex].append(newValue)
            } else {
                newMatrix.insert([newValue], at: rowIndex)
            }
        }
    }
    return newMatrix
}

//Test
rotateMatrix([[0,1,2],[3,4,5],[6,7,8]])
