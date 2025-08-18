import Foundation


var finalFruits: [String] = ["Apple", "Banana", "Orange", "Mango", "Pineapple"]

print(finalFruits)

// not optional
let item = finalFruits[1]

var fruitsSet: Set<String> = ["Apple", "Banana", "Orange", "Mango", "Pineapple"]

print(fruitsSet)


// Dictionaries are kinda like maps in Java


var myFirstDictionary: [String: Bool] = [
    "Apple" : true,
    "Banana" : false
]

// optional
let item1 = myFirstDictionary["Mango"]



var anotherDictionary: [String : String] = [
    "abc" : "Apple",
    "def" : "Banana"
]


let item2 = anotherDictionary["abc"]

anotherDictionary["xyz"] = "Mango"

anotherDictionary.removeValue(forKey: "def")

print(anotherDictionary)


struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 7),
    PostModel(id: "xyz987", title: "Post 3", likeCount: 217),
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}


var postDict: [String : PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678" : PostModel(id: "def678", title: "Post 2", likeCount: 7),
    "xyz987" : PostModel(id: "xyz987", title: "Post 3", likeCount: 217),
]

let myNewItem = postDict["def678"]
print(myNewItem!)
