import Foundation


// For Loops

for item in 0..<100 {
//    print(item)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray {
    print(item)
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}
print(secondArray)

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: true),
]

var favoriteLessons: [LessonModel] = []

for lesson in allLessons {
    guard lesson.isFavorite else { continue }
    favoriteLessons.append(lesson)
}

print(favoriteLessons)

// with ".enumerated()" you get index and lesson at the same time
// if you look what the ".enumerated()" gives back you can see "(n, x)"
// here is "n" the index and "x" the lesson
for (index, lesson) in allLessons.enumerated() {
    
    // skips this loop if index == 1
    if index == 1 {
        continue
    }
    
    // breaks the whole loop
    if index == 2 {
        break
    }
    
    print("index: \(index) || lesson: \(lesson)")
}



// ------------------------------------------


// While Loops

var counter = 0

while counter < 5 {
    print("Hello World! \(counter)")
    counter += 1
}



// Infinity Loop

//while true {
    //    print("Hello World!")
//}
