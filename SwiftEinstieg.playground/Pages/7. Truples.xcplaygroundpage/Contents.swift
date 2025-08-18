import Foundation




var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

@MainActor
func getUserName() -> String {
    userName
}
@MainActor
func getUserIsPremium() -> Bool {
    userIsPremium
}

@MainActor
// limited to 1 return type
func getUserInfo() -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    // do something
    return name
}

@MainActor
// possible to retrun more types
// but you don't see what kind String or Bool is
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let IsPremium = getUserIsPremium()
    
    return (name, IsPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info1 = getUserInfo2()
//let name1: String = info1.0

@MainActor
// now you can see the kind of String and of Bool
func getuserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    
    return (name, isPremium)
}

let info2 = getuserInfo3()
let name = info2.name

@MainActor
func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}
// you can also give the parameters a global name
func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
print(info)
