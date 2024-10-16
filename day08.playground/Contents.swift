import UIKit

//How to provide default values for parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)


// Throwing errors
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


/* Checkpoint 4
 * The challenge is this: write a function that accepts an integer from 1 through 10,000,
 * and returns the integer square root of that number.
 * You can’t use Swift’s built-in sqrt()
 * If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 * You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 * If you can’t find the square root, throw a “no root” error.
 */

enum squareRootError: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ number: Int) throws -> Int{
    if(number < 1 || number > 10000){
        throw squareRootError.outOfBounds
    }
    
    for i in 1...number {
        if(i*i==number){
            return i;
        }
    }
    throw squareRootError.noRoot
}


do {
    try print(squareRoot(25))
} catch squareRootError.outOfBounds {
    print("Out of Bounds")
} catch squareRootError.noRoot {
    print("No root")
}

