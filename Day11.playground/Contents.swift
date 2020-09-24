//: # protocols, extensions, and protocol extensions
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/11)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//protocols
protocol Identifiable {
    var id: String { get set }
}
struct User: Identifiable {
    var id: String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

//protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

//extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

//protocol extension
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

//protocol oriented programming
protocol Identifiable2 {
    var id: String { get set }
    func identify()
}
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
struct User2: Identifiable {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()
