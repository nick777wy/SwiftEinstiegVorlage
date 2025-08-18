import Foundation



// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are Value types
// Value types are copied & mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = .dateCreated
//    }
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
        // "self" is similar to "this" form java
    }
}


let myObject: String = "Hello World"

//let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)
//let myQuiz: Quiz = Quiz(title: "Quiz 1")
//let myQuiz = Quiz(title: "Quiz 1", isPremium: nil)
let myQuiz: Quiz = Quiz(title: "Quuz 1", dateCreated: nil, isPremium: false)




// ---------------------------------------------------------


// "Immutable struct" = all "let" constants = NOT mutable = "cannot mutate it!"
struct Usermodel {
    let name: String
    let isPremium: Bool
}


var user1: Usermodel = Usermodel(name: "Nick", isPremium: false)

@MainActor
func markUserAsPremium() {
    print(user1)
    user1 = Usermodel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserAsPremium()

// ---------------------------------------------------

// "mutable struct
struct Usermodel2 {
    let name: String
    var isPremium: Bool
}


var user2 = Usermodel2(name: "Nick", isPremium: false)

@MainActor
func markUserAsPremium2() {
    print(user2)
    user2.isPremium = true
    print(user2)
}

print("second func")
markUserAsPremium2()


// ------------------------------------------------

// "immutable struct"
struct Usermodel3 {
    let name: String
    var isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> Usermodel3 {
        return Usermodel3(name: name, isPremium: newValue)
    }
}

print("third func")
var user3: Usermodel3 = Usermodel3(name: "Nick", isPremium: false)
print(user3)
user3 = user3.markUserAsPremium(newValue: true)
print(user3)

// ----------------------------------------------------

// "mutable struct"
struct Usermodel4 {
    let name: String
    // private(set) says "you can read it from outside (the struct Usermodel4) but you can't write or edit it"
    // will be explained in 12.AccessControl
    private(set) var isPremium: Bool
    
    // mutating says "this method will change something in this struct and won't just read it"
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = Usermodel4(name: "Nick", isPremium: false)
user4.markUserAsPremium()
user4.updateIsPremium(newValue: true)


struct User5 {
    let name: String
    let isPremium: Bool
    let isNew: Bool
}
