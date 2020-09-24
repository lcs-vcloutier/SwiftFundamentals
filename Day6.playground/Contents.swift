//: # closures part one
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/6)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
//why use closures?
import Cocoa

var str = "Hello, playground"

//creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

//accepting parameters in a closure
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("London")

//returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

//closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//trailing closure syntax - get used to this weirdness notice no brackets
travel {
    print("I'm driving in my car")
}
