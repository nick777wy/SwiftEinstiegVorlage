import Foundation


// Constant
let someConstant: Bool = true

// Variable
var someVariable: Bool = true

// cannot assign to value: 'someConstant' is a 'let' constant
// someConstant = false


someVariable = false

var myNumber = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 1234
print(myNumber)
// Cannot assign value of type 'Bool' to type 'Double'
// myNumber = false


// if statements

var usersIsPremium: Bool = true


if usersIsPremium == true {
    print("1 - user is premium")
} else {
    print("1.1 - user is NOT premium")
}

if usersIsPremium {
    print("2 - user is premium")
}


if usersIsPremium == false {
    print("3 - user is NOT premium")
} else {
    print("3.1 - user is premium")
}

if !usersIsPremium {
    print("4 - user is NOT premium")
}
