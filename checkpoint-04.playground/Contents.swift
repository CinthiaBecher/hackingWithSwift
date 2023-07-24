enum squareError: Error {
    case small, big, noRoot
}

func squareRoot(number:Int) throws {
    if number > 10_000 {
        throw squareError.big
    } else if number < 1{
        throw squareError.small
    }
    
    var foundSquare = false
    for i in 1...100{
        var square = i*i
        if(square == number){
            print("The square of \(number) is \(i)")
            foundSquare = true
            break
        }
    }
    
    if(!foundSquare){
        throw squareError.noRoot
    }
}

do{
    try squareRoot(number: 25)
} catch squareError.big{
    print("There was an out of bounds error. Number is too big")
} catch squareError.small{
    print("There was an out of bounds error. Number is too small")

} catch squareError.noRoot{
    print("There was a no root error. Number don't have a square")
}

