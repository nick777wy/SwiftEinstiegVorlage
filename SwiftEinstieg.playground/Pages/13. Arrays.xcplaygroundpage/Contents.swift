import Foundation



// Arrays, Sets

var myTitle: String = "Hello, World!"
var myTitel2: String = "Hello, World!"

// Tuple

func doSomething(value: (title1: String ,title2: String)) {
    
}

doSomething(value: (myTitle, myTitel2))

//Custom data model
struct TitlesModel {
    let title1: String
    let title2: String
}


// ----------------------------------

let apple = "Apple"
let orange = "Orange"
let banana = "Banana"

let fruits1: [String] = ["Apple", "Orange", "Banana"]
let fruits2: [String] = [apple, orange, banana]
let fruits3: Array<String> = [apple, orange, banana]

let myBools: [Bool] = [true, false, true, true, false, false, true, false]

func doSomething(value: [String]) {
    
}



var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]


let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {
    // first item
}


fruitsArray = fruitsArray + ["Pineapple"]
// append = add item at end
fruitsArray.append("Peach")

print(fruitsArray)

// Count = 1, 2, 3, 4
// Indexes = 0, 1, 2, 3

fruitsArray[2]

if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}
    
    
let firstIndex = fruitsArray.indices.first
let lasIndex = fruitsArray.indices.last

fruitsArray.append("Watermelon")

fruitsArray.insert("Watermelon", at: 2)

print(fruitsArray)
if fruitsArray.indices.contains(3){
    fruitsArray.remove(at: 3)
}

fruitsArray.removeAll()
print(fruitsArray)

struct ProductModel {
    let title: String
    let price: Int
}

var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 508),
    ProductModel(title: "Product 3", price: 530),
    ProductModel(title: "Product 4", price: 20)
]


var finalFruits: [String] = ["Apple", "Banana", "Orange", "Apple"]

print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Banana", "Orange", "Apple"]

print(fruitsSet)

