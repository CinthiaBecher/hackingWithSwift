import UIKit

for i in 1...100{
    var multiple3 = i.isMultiple(of: 3)
    var multiple5 = i.isMultiple(of: 5)
    
    if (multiple3 && multiple5){
        print("FizzBuzz")
    }
    else if (multiple3) {
        print("Fizz")
    }
    else if (multiple5) {
        print("Buzz")
    }
    else{
        print(i)
    }
}
