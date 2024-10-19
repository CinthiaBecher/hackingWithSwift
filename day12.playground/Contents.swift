import UIKit

///How to create your own classes
class Vehicle {
    let isElectric: Bool
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
    
    
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
var newCar = Car(isElectric: true, isConvertible: true)
newCar.score += 10

class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}


var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"

print(user1.username)
print(user2.username)


///Deinit a class
///Remember, the deinitializer is only called when the last remaining reference to a class instance is destroyed.
class Person {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = Person(id: i)
    print("User \(user.id): I'm in control!")
}

var users = [Person]()

for i in 1...3 {
    let user = Person(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

///**Checkpoint 7**
/// Make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses,
/// then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
/// The Animal class should have a legs integer property that tracks how many legs the animal has.
/// The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
/// The Cat class should have a matching speak() method, again with each subclass printing something different.
/// The Cat class should have an isTame Boolean property, provided using an initializer.
class Animal{
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal{
    init(){
        super.init(legs: 4)
    }
    func speak(){
        print("au-au")
    }
}

class Corgi: Dog{
    override func speak(){
        print("au-au from a corgi")
    }
}

class Poodle: Dog{
    override func speak(){
        print("au-au from a poodle")
    }
}

class Cat: Animal{
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak(){
        print("meaw")
    }
}

class Persian: Cat{
    override func speak(){
        print("meaw from a persian")
    }
}
class Lion:Cat{
    override func speak(){
        print("meaw from a lion")
    }
}

let persianCat = Persian(isTame: false)
persianCat.speak()
print(persianCat.legs)

let poodleDog = Poodle()
poodleDog.speak()
print(poodleDog.legs)
