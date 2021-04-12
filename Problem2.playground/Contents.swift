/*
 Problema #2
 
 Dado un arreglo de números y un valor deseado, regresa los índices de los dos números en el arreglo que sumen ese valor.
 Puedes asumir que siempre hay una sola solución. No puedes usar el mismo elemento dos veces.
  
In: nums=[2, 7, 1, 5], target = 9
Out: [0,1]
 
In: nums = [3, -1, 0, 1], target=0
Out: [1, 3]
 */

func totalSum(of target: Int, from values: [Int]) -> (Int, Int) {
    var hashMap: [Int: Int] = [:]
    for (index, value) in values.enumerated() {
        if let hash = hashMap[value] {
            return (hash, index)
        } else {
            let hash = target - value
            hashMap[hash] = index
        }
    }
    return (0, 0)
}

///Test
totalSum(of: 9, from: [2, 7, 1, 5])
totalSum(of: 0, from: [3, -1, 0,1])
