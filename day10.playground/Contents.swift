import UIKit

///How to create your own structs
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
red.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int
//Any function that change data belonging to the struct must be marked with a special mutating keyword,
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}
//cannot be constant
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)


///How to compute property values dynamically
struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    // we’re reading what looks like a property, but behind the scenes Swift is running some code to calculate its value every time.
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    
    }
}
var archer3 = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archer3.vacationTaken += 4
print(archer3.vacationRemaining)
archer3.vacationTaken += 4
print(archer3.vacationRemaining)


var archer4 = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archer4.vacationTaken += 4
archer4.vacationRemaining = 5
print(archer4.vacationRemaining)
print(archer4.vacationAllocated)

///property observers
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

///How to create custom initializers

struct Player {
    let name: String
    let number: Int
    let id: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
        id = Int.random(in: 1...99)
    }
}
