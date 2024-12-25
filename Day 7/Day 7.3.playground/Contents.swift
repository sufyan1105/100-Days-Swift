import Cocoa

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}
//
////let user = getUser()
////print("Name: \(user[0]) \(user[1])")
//
//func getUser() -> [String: String] {
//    [
//        "firstName": "Taylor",
//        "lastName": "Swift"
//    ]
//}

//let user = getUser()
//print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")

//func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Taylor", lastName: "Swift")
//}
//
////let user = getUser()
////print("Name: \(user.firstName) \(user.lastName)")
//
//func getUser() -> (firstName: String, lastName: String) {
//    ("Taylor", "Swift")
//}
//
//func getUser() -> (String, String) {
//    ("Taylor", "Swift")
//}

//let user = getUser()
//print("Name: \(user.0) \(user.1)")

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

//let user = getUser()
//let firstName = user.firstName
//let lastName = user.lastName
//
//print("Name: \(firstName) \(lastName)")
//
//let (firstName, lastName) = getUser()
//print("Name: \(firstName) \(lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")
