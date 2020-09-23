//: # operators and conditions
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/3)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
// problems with setting constants more than once other than that this is a good reference
import Cocoa

var str = "Hello, playground"

//arithmetic operators
let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

//operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//compound assignment operators
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//comparison operators
let firstScore = 6
let secondScore = 4
firstScore == secondScore
firstScore != secondScore
firstScore < secondScore
firstScore >= secondScore
"Taylor" <= "Swift" //alphebetical order

//conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//combining conditions
let age1 = 12
let age2 = 21
//both need to be true
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
//either need to be true
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//the ternary operator
let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
//switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}
//range operators
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

