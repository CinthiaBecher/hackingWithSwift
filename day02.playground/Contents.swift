import UIKit

//Booleans

let goodDogs = true
var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)

//How to join strings together
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart


let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)


let number = 11
let missionMessage = "Apollo " + String(number) + " landed on the moon."
let missionMessage2 = "Apollo \(number) landed on the moon."

print("5 x 5 is \(5 * 5)")

/*
 * Checkpoint 1
 * Creates a constant holding any temperature in Celsius.
 * Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
 * Prints the result for the user, showing both the Celsius and Fahrenheit values.
 */

let celsius = 20.0
let fahrenheit = ((20*9)/5)+32
print("Celsius: \(celsius)° = Fahrenheit: \(fahrenheit)°")


