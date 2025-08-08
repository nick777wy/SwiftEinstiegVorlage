import Foundation


func myFirstFunction() {
    print("My first function called")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("My second function called")
}

func myThirdFunction() {
    print("My third function called")
}

myFirstFunction()


// -> means: return "this" type
func getUserName() -> String {
    // let is only inside function (private)
    let username: String = "Nick"
    // is needed because of the arrow
    return username
}

func chekckIfUserIsPremium() -> Bool {
    return false
}


let name: String = getUserName()



// ---------------------------------------------

@MainActor
func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

//Discription for @MainActor in Confluence Swift page
@MainActor
func checkUserStatus(didCompleteOnboarding: Bool , profileIsCreated: Bool) -> Bool {
    didCompleteOnboarding && profileIsCreated
}

showFirstScreen()


// --------------------------------------------------------

doSomething()

func voidFunction() -> Void {
    doSomething()
}

func doSomething() -> String {
    var title: String = "Avengers"
    
    // If title is equal to Avengers
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
    
    // This if statement and everything below that will never be called because of the upper return
    /* if title == "will never get called" {
        return title
    } */
}

doSomethingElse()

func doSomethingElse() -> String {
    var title: String = "Avengers"
    
    // Make sure title == Avengers
    guard title == "Avengers" else {
        //if guard-operation == false -> go to else
        return "Not Marvel"
    }
    
    // if guard-operation == true -> skip else and go directly to the next line
    // in this case -> return "Marvel"
    
    return "Marvel"
}



// Calculated variables are basically functions
// Generally good for when you don't need to pass data into the function

let number1 = 5
let number2 = 8

func calcNumbers() -> Int {
    return number1 + number2
}

func calcNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calcNumbers()
let result2 = calcNumbers(value1: number1, value2: number2)


// Calculated variable
// does the same as the func calcNumbers() but you can directly give it a calculation without a function
var calculatedNumber: Int {
    return number1 + number2
}
