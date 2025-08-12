import Foundation


struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Sophia", isPremium: true, order: 1),
    DatabaseUser(name: "Joe", isPremium: false, order: 5),
    DatabaseUser(name: "Chris", isPremium: false, order: 10),
    DatabaseUser(name: "Tony", isPremium: true, order: 2),
]

// filter method does the same as the commented for loop below but shorter and as a filter
//var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
//    if user.isPremium {
//        return true
//    }
//    return false
//}

// filter method does the same as the commented for loop below but shorter and as a filter
var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    // is shorter because "isPremium" returns a Boolean
    // you can also write it without "return" because you only have one thing to return
    user.isPremium
}

// "$0" meaning the item that we are looping on
var allPremiumUsers2: [DatabaseUser] = allUsers.filter({ $0.isPremium })


//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}

print(allPremiumUsers)

// sorting
var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    user1.order < user2.order
}

//shorter variant
var orderedUsers2: [DatabaseUser] = allUsers.sorted(by: { $0.order < $1.order })

print("\n orderUsers: \n \(orderedUsers)")

// mapping
var userNames: [String] = allUsers.map { user in
    return user.name
}

var userNames2: [String] = allUsers.map(\.name)
var userNames3: [String] = allUsers.map({ $0.name })

print("\n userNames: \n \(userNames)")
print(userNames2)
print(userNames3)


// every method again in short

// Mapping
var userOrders: [Int] = allUsers.map({ $0.order })
print(userOrders)

// Sorted
var orderdOrders: [Int] = userOrders.sorted(by: ({ $0 < $1 }))
print("\n orderdOrders: \n \(orderdOrders)")

// Filter
var userFilterNumbers: [DatabaseUser] = allUsers.filter({ $0.order < 5 })
print(userFilterNumbers)
