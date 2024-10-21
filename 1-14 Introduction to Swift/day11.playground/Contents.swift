import UIKit

///How to limit access to internal data using access control
struct BankAccount {
    /**
     Use private for “don’t let anything outside the struct use this.”
     Use fileprivate for “don’t let anything outside the current file use this.”
     Use public for “let anyone, anywhere use this.”
     private(set). This means “let anyone read this property, but only let my methods write it.”
     */
    private(set) var funds = 0


    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

///Static properties and methods
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

///**Checkpoint 6**
///Create a struct to store information about a car, including its model, number of seats, and current gear,
///then add a method to change gears up or down.
///Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly?
///Should the gear-changing method validate its input somehow?

struct Car{
    let model: String
    let seats: Int
    var gear = 0 {
        willSet {
            print("Current gear is: \(gear)")
            print("New gear will be: \(newValue)")
        }
        didSet {
            print("gear: \(oldValue)")
        }
    }
    
    mutating func changeGear(gear: Int) {
        if(gear < 0 || gear > 10){
            return;
        }
        self.gear = gear
    }
}

var car = Car(model: "Honda", seats: 5)
car.changeGear(gear: 3)
