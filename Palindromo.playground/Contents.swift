import Foundation

/*
 Escribe un programa que verifique que una frase es un palindromo.
 Ejemplos:
 
 In: "La ruta nos aporto otro paso natural"
 Out: true
 
 In: "Claramente, esto no es un palindromo"
 Out: false
 
 */

func isPalindrome(_ text: String) -> Bool {
    let trimmed = text.replacingOccurrences(of: " ", with: "").lowercased()
    
    for i in 0..<trimmed.count {
        let beginIndex = trimmed.index(trimmed.startIndex, offsetBy: i)
        let endIndex = trimmed.index(trimmed.endIndex, offsetBy: -i-1)
        
        if trimmed[beginIndex] != trimmed[endIndex] {
            return false
        }
    }
    
    return true
}

//Tests
isPalindrome("La ruta nos aporto otro paso natural")
isPalindrome("Claramente, esto no es un palindromo")
isPalindrome("Anita lava la tina")
