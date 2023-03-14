import UIKit

var greeting = "Hello, playground"

var numbers:[Int] = [2,3,4]
print(numbers)

var emptyArray = [Int] ()
print(emptyArray)

var programmingLanguages = ["Swift","Java","Python"]
print(programmingLanguages[0])

var ProgrammingLanguages = ["Swift","Java","Python"]
ProgrammingLanguages[0] = "Java Script"
print (ProgrammingLanguages)



var names:[String] = ["Oliver","Elijah","James"]

//a
print("Before appending \(names)")
names.append("Masthan")
print("After inserting \(names)")

//b

print("Before inserting \(names)")
names.insert("Benjamin", at:2)
print("After inserting \(names)")


//c

print(names.count)

//d

names.sort()
print("After sorting \(names)")

//e

names.reverse()
print("After removing \(names)")

//f

names.remove(at: 2)
print("After removing \(names)")

//g

names.swapAt(1,2)
print("After swapping \(names)")


var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")
