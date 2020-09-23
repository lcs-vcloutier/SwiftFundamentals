//: # loops, loops, and more loops
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/4)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
//some variables/constants may be declared twice but good reference.
import Cocoa

var str = "Hello, playground"
//for loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}
print("Players gonna ")

for _ in 1...5 {
    print("play")
}
//while loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//repeat loops
var number2 = 1

while number2 <= 20 {
    print(number2)
    number2 += 1
}

print("Ready or not, here I come!")

repeat {
    print("This is false")
} while false
//exiting loops
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}
//exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
//skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}
//infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
