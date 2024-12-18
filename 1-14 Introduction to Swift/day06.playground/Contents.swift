import UIKit

//Continue and break
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}


let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

//While

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")


let id = Int.random(in: 1...20)
// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...100)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

/* Checkpoint 03
 * Fizz buzz - loop from 1 through 100, and for each number:
 * If it’s a multiple of 3, print “Fizz”
 * If it’s a multiple of 5, print “Buzz”
 * If it’s a multiple of 3 and 5, print “FizzBuzz”
  Otherwise, just print the number.
 */
for i in 1...100{
    if(i%3 == 0){
        print("\(i) Fizz")
    } else if(i%5 == 0){
        print("\(i) Buzz")
    } else {
        print(i)
    }
}
