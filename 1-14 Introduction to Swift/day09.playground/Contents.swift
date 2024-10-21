import UIKit

//Closures
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

print(sayHello("Cinthia"))

//var greetCopy: () -> Void = greetUser
//The empty parentheses marks a function that takes no parameters.
// The arrow means just what it means when creating a function: we’re about to declare the return type for the function.
//Void means “nothing” – this function returns nothing. Sometimes you might see this written as (), but we usually avoid that because it can be confused with the empty parameter list.


//How to accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}


doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}


//Checkpoint 5
//sorted(), filter(), map(), so I’d like you to put them together in a chain – call one, then the other, then the other back to back without using temporary variables.

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Printing lucky numbers using a function:
func printLuckyNumbers(_ dataSet: [Int]) {
    dataSet.filter { !$0.isMultiple(of: 2) }
        .sorted()
        .map { print("\($0) is a lucky number")}
}

printLuckyNumbers(luckyNumbers)
