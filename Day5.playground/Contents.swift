//: # functions, parameters, and errors
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/5)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
//dont entirely understand parameter labels and omitting
//sometimes define a function twice but use this as a reference

import Cocoa

var str = "Hello, playground"

//writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

//accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)

//returning values
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)

//parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

//omiting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

//default parameters
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet2("Taylor")
greet2("Taylor", nicely: false)
//variadic functions
print("Haters", "gonna", "hate")
func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square2(numbers: 1, 2, 3, 4, 5)

//writing throwing functions
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}
//running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
//inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)



