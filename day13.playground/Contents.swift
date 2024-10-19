import UIKit

///Protocols
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//All the methods we listed in Vehicle must exist exactly in Car
struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

///Extensions
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

///**Checkpoint 8**
///make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:
///A property storing how many rooms it has.
///A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
///A property storing the name of the estate agent responsible for selling the building.
///A method for printing the sales summary of the building, describing what it is along with its other properties.

protocol Building {
    var rooms: Int{ get set }
    var cost: Int{ get }
    var agent: String{ get }
    func salesSummary() -> String
}

struct House: Building{
    var rooms: Int
    var cost: Int
    var agent: String
    func salesSummary() -> String{
        return "HOUSE | rooms: \(rooms) | cost: \(cost) | agent: \(agent)"
    }
}
struct Office: Building{
    var rooms: Int
    var cost: Int
    var agent: String
    func salesSummary() -> String{
        return "OFFICE | rooms: \(rooms) | cost: \(cost) | agent: \(agent)"
    }
}

var houseA = House(rooms: 5, cost: 4000, agent: "John")

print(houseA.salesSummary())
