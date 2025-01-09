import Cocoa

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

// Optional unwrapping for "Peach"
if let peachOpposite = opposites["Peach"] {
    print("Peach's opposite is \(peachOpposite)")
} else {
    print("Peach does not have an opposite in the dictionary.")
}

// Optional unwrapping for "Mario"
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// Optional unwrapping for `username`
var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

// Function to square a number
func square(number: Int) -> Int {
    number * number
}

// Safely handle the optional `number`
var number: Int? = nil
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
} else {
    print("Cannot calculate square because the number is nil.")
}
