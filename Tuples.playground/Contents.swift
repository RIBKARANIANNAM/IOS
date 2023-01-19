import UIKit

var greeting = "Hello, playground"

var httpError = (errorCode : 404 , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ":")
print(httpError.errorMessage)

var name = ("JOHN","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : ",")
print(lName)

//ar origin = (


var origin = (x : 0 , y : 0)
var point = origin
print(point)
print(origin.0,origin.1 , separator: ",")
print("(\(origin.x) ,",terminator: "")
print("\(origin.y))")


let city = (name : "Maryille" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")


var cricketkit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketkit.0)
print(cricketkit.1)
print(cricketkit.2.0)
print(cricketkit.2.1)




