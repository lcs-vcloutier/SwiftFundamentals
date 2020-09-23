//: # variables, simple data types, and string interpolation
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/1)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
import Cocoa

var str = "Hello, playground"
str = "Goodbye"

//strings and integers
var age = 38
var population = 8_000_000

//multi line strings

var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""

//doubles and booleans
var pi = 3.141
var awesome = true

//string interpolation
var score = 85
var str3 = "Your score was \(score)"
var results = "The test results are here: \(str3)"

//constants
let taylor = "swift"

//type annotations
let str4 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
