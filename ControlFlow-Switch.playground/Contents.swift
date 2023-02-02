import UIKit

var greeting = "Hello, playground"

let alphabet:Character="a"

switch alphabet {
       case "a","A":print("It is a alphabet a or A")
case "b":print("It is lower alphabet b")
case "c":print("It is a upper case alphabet c")
default:print("None of the cases are executed above")
        
    

}



let isVowel:Character="E"
switch isVowel {
case "a","e","i","o","u":
    print("The alphabet is a lower case vowel")
    
case "A","E","I","o","U":
    print("The alphabet is an upper case vowel")
    
default:print("The alphabet is a consonant")
}

let isHot:Double = -10.0

switch isHot {
case 60...95:print("It's really warm.Don't forget to wear sunscreen.")
case 35...60:print("It is not that cold.wear a t-shirt")
case ..<35:print("It is very cold.Consider wearing a scraf.")
default:("The temperature is Unbearable")
    <#code#>
}

var x:Int=3
var y:Int=4
var z:Int:5

switch x {
case 5: print("\(z)~")
}
