import UIKit

/* Creating Variables
 * var -> can change as the program runs
 * let -> constant
 */

//Strings
var greeting = "Hello, playground"
let character = "Daphne"
// three """ for more than one line
let movie = """
A day in
the life of an
Apple engineer
"""
let filename = "paris.jpg"


print(greeting, character)
print(character.uppercased())
print(character.count)
print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))


//Numbers
let score = 10
let reallyBig = 100_000_000 //In case you wantto split
print(reallyBig)

let a = 1
let b = 2.0
let c = Double(a) + b
print(c)

let number = 120
print(number.isMultiple(of: 3))




