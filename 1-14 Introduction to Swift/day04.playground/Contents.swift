import UIKit

//Type annotations
let surname: String = "Lasso"
var age: Int = 0
var score: Double = 0
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
var clues = [String]()

/* Checkpoint 2
 * create an array of strings,
 * then write some code that prints the number of items in the array
 * and also the number of unique items in the array.
 */
let array: [String] = ["one", "two", "one", "three", "ten", "ten"]
print("Number of item: \(array.count)")
let uniqueItems = Set(array)
print("Number of unique items: \(uniqueItems.count)")
