import UIKit

var greeting = "Hello, playground"
var i=10.0

print("Hii",10,12.25,"I am here")

//String interpolation
//Everything with the quotations,variable
//names with\(varName)
var name = "Ribka"
print("Hello, \(name)!")
print("Hello, \(name)!\(i)")
//print("Hello,"+name+"!"+i)

var programmingLanguage = "Swift"
print("My favorite programming language is, \(programmingLanguage)")

var age = 23
print("You are \(age) years old and in another \(age)years, you will be \(age * 2)")

print(age+1)
age = age-10
print(age)

print("""
Hello
World!😃
I am here
""")



print("Hello All,\rWelcome to Swift programming 😁")


let  welcomeMessage : String = "Hello!"
print(welcomeMessage , "All")

//let K = 10;
//K = K+1;ka value cannot be changed as it is a constant.

print("Welcome to Swift Programming")
print("Fall 2021")
print("***************")
print("Welcome to Swift Programming" , terminator : "-")
print("Fall 2021")


print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "$")
