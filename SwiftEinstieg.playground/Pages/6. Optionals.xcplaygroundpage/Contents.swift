import Foundation




// There is always a value and it is a Boolean
let myBool: Bool = false

// We don't know if there is a value, but if there is, it is a Boolean
var myOtherBool: Bool? = nil

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)

// nil coalescing operator
// simple: "nil" is similar "null" in java

let newValue: Bool? = myOtherBool

// the value of myOtherBool (if there is one), otherwise false
let newValue2: Bool = myOtherBool ?? false

print("New value2: \(newValue2.description)")

var myString: String? = "Hello World"
print (myString ?? "There is no Value!")

myString = nil
print (myString ?? "There is no Value!")

let newString = myString ?? "some default value"
var userIsPremium: Bool? = true

@MainActor
func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}

@MainActor
func checkIfUserIsPremium2() -> Bool? {
    return userIsPremium ?? false
}


let isPremium = checkIfUserIsPremium2()


checkIfUserIsPremium3()
@MainActor
// If-let
// when if-let is successful, enter the closure
func checkIfUserIsPremium3() -> Bool {
    
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
}

checkIfUserIsPremium4()
@MainActor
func checkIfUserIsPremium4() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}

checkIfUserIsPremium5()
@MainActor
func checkIfUserIsPremium5() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

checkIfUserIsPremium6()
@MainActor
// Guard
// when a guard is a
func checkIfUserIsPremium6() -> Bool {
    
    // Make sure there is a value
    // If there is, let newValue equal that value
    // Else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    
    // Here we have access to the non-optional value
    return newValue
}

checkIfUserIsPremium7()
@MainActor
func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}


// --------------------------------------------------------

// If-let

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

checkIfUserIsSetUp()

@MainActor
func checkIfUserIsSetUp() -> Bool {
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        // userFavoriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie)
    } else {
        // userisNew == nil OR
        // userDidCompleteOnboarding == nill OR
        // user FavoriteMovie == nil
        return false
    }
}


func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding && userFavoriteMovie != "nothing"{
        return true
    }
    return false
}


// --------------------------------------------------------

// Guard-let

var userIsNew2: Bool? = true
var userDidCompleteOnboarding2: Bool? = false
var userFavoriteMovie2: String? = nil


checkIfUserIsSetUp2()
@MainActor
func checkIfUserIsSetUp2() -> Bool {
    guard let userIsNew2, let userDidCompleteOnboarding2, let userFavoriteMovie2 else {
        // userisNew == nil OR
        // userDidCompleteOnboarding == nill OR
        // user FavoriteMovie == nil
        return false
    }
    // userIsNew == Bool AND
    // userDidCompleteOnboarding == Bool AND
    // userFavoriteMovie == String
    return getUserSatus2(
        userIsNew2: userIsNew2,
        userDidcompleteOnboarding2: userDidCompleteOnboarding2,
        userFavoriteMovie2: userFavoriteMovie2)
}


func getUserSatus2(userIsNew2: Bool, userDidcompleteOnboarding2: Bool, userFavoriteMovie2: String) -> Bool {
    guard userIsNew2 && userDidcompleteOnboarding2 && userFavoriteMovie2 != "nothing" else {
        return false
    }
    return true
}

// --------------------------------------------------------
// If vs Guard cases

// layerd if-let

checkIfUserIsSetUp3()
@MainActor
func checkIfUserIsSetUp3() -> Bool {
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie {
                //userFavoriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie)
            } else {
                // userFavoriteMovie == nil
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
        // userIsNew == nil
    } else {
        return false
    }
}






// layerd guard-let

checkIfUserIsSetUp4()
@MainActor
func checkIfUserIsSetUp4() -> Bool {
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    //userIsNew == Bool
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    //userDidCompleteOnboarding == Bool
    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return false
    }
    // userFavoriteMovie == Bool
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie)
}



// Optional chaining

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}
getUserData()
func getUserData() {
    
    let username: String? = getUsername()
    // "I will get the count if the username in not nil"
    let count: Int? = username?.count
    
    
    let title: String = getTitle()
    // "I will get the count always"
    let count2 = title.count
    
    
    // If username has a value, and first character in username has a value, then return the value of isLowercase
    // Optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
    // "If will get the count because I know 100% that username is not nil"
    // This will crash your application if username is nil!
    let count3: Int = username!.count
}

// safely unwrap an optional:
// nil coalscing
// if-let
// guard

// explicitly unwrap optional
// !
