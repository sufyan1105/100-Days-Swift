import Cocoa

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is now unwrapped and available
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

// Using `if let` to safely unwrap `myVar`
if let unwrapped = myVar {
    print("Run if myVar has a value inside: \(unwrapped)")
}

// Correct use of `guard` to unwrap `myVar`
guard let unwrapped = myVar else {
    print("Run if myVar doesn't have a value inside")
    // Exit the current scope
    fatalError("myVar was nil!")
}

// This part of the code will only run if `myVar` was unwrapped
print("myVar successfully unwrapped with value: \(unwrapped)")
