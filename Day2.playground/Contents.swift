//: # arrays, dictionaries, sets, and enums
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/2)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
import Cocoa

var str = "Hello, playground"

//arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

//sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"]) //see it eliminates duplicates

//tuples
var name = (first: "Taylor", last: "Swift")
name.0 //using place
name.first //using name

//arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville") //array
let set = Set(["aardvark", "astronaut", "azalea"]) //set
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"] //tuples

//dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

//dictionary default value
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

//creating empty collections

var teams = [String: String]() //empty collection
teams["Paul"] = "Red" //adding to empty collection

var results = [Int]() //for int

var words = Set<String>() //empty set
var numbers = Set<Int>() //empty set

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

//enumerations
//enums – are a way of defining groups of related values in a way that makes them easier to use.

enum Result {
    case success
    case failure
}
let result4 = Result.failure

//enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")

//enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
