import UIKit

//Arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let first = beatles[0]
beatles.append("Adrian")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores)
print(scores.sorted())
print(scores.reversed())


var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

print(albums.contains("Red"))
albums.remove(at: 2)
albums.removeAll()

//Dictionaries
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee["name"])
print(employee["name", default: "Unknown"]) //Best practice

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

//Sets
let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(actors) //we dont have order


var people = Set<String>()
people.insert("Denzel Washington") 
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")

//Enums
// define a new data type
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
