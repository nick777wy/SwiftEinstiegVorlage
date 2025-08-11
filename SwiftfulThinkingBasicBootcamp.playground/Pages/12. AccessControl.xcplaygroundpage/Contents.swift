import Foundation

// Rule of thumb:
// We want everything to be as private as possible!
// This makes your code easier to read/debug and is good coding practice!

struct MovieModel {
    let titel: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
    // Beginner friendly variant
    // this method would also be possible with a "let is Favorite" instead of "private(set) var is Favorite"
    func updateFavoriteStatusBeginner(newValue: Bool) -> MovieModel {
        MovieModel(titel: titel, genre: genre, isFavorite: newValue)
    }
    
    // more Advanced variant
    mutating func updateFavoriteStatusAdvanced(newValue: Bool) -> Void {
        self.isFavorite = newValue
    }
    
}

enum MovieGenre: String, CaseIterable {
    case action
    case adventure
    case comedy
    case drama
    case fantasy
    case horror
    case romance
    case scienceFiction
}

class MovieManager {
    
    // public
    public var movie1 = MovieModel(titel: "Avatar", genre: .action, isFavorite: false)
    
    // private
    private var movie2 = MovieModel(titel: "Step Brothers", genre: .comedy, isFavorite: true)
    
    // read is public, set is private
    private(set) var movie3 = MovieModel(titel: "Avengers", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatusAdvanced(newValue: isFavorite)
    }
    
    
}



let manager = MovieManager()

let someValue = manager.movie1

print(manager.movie1)
manager.movie1 = manager.movie1.updateFavoriteStatusBeginner(newValue: true)
print(manager.movie1)
manager.movie1.updateFavoriteStatusAdvanced(newValue: false)
print(manager.movie1)
manager.updateMovie3(isFavorite: true)
print(manager.movie3)



// Version 1
// We can GET and SET the value from outside the object.
// "too public"
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatusBeginner(newValue: true)


// Version 2
// We can't GET or SET the value from outside the object.
//let movie2 = manager.movie2
//manager.movie2 = manager.movie2.updateFavoriteStatusBeginner(newValue: true)


// Version 3
// We can GET the value from outside the object, but we can't SET the value form outside the object.
let movie3 = manager.movie3
//manager.movie3 = manager.movie3.updateFavoriteStatusBeginner(newValue: true)
manager.updateMovie3(isFavorite: true)


// Note: private & public are by far the most common but there are many others
//
// open
// public
// internal
// fileprivate
// private
