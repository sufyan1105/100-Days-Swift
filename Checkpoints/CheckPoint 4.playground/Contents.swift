import Cocoa

enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func integerSquareRoot(of number: Int) throws -> Int {
    guard number >= 1 && number <= 10000 else {
        throw SquareRootError.outOfBounds
    }
    
    for i in 1...number {
        if i * i == number {
            return i
        } else if i * i > number {
            break
        }
    }
    
    throw SquareRootError.noRoot
}

do {
    print(try integerSquareRoot(of: 25))
    print(try integerSquareRoot(of: 100))
    print(try integerSquareRoot(of: 10))
    print(try integerSquareRoot(of: 0))   
} catch SquareRootError.outOfBounds {
    print("Out of bounds error!")
} catch SquareRootError.noRoot {
    print("No root error!")
} catch {
    print("An unexpected error occurred: \(error)")
}
