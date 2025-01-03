import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof!")
    }
}
class Corgi: Dog {
    override func speak() {
        print("Corgi says: Yip yip!")
    }
}
class Poodle: Dog {
    override func speak() {
        print("Poodle says: Arf!")
    }
}
class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meow!")
    }
}
class Persian: Cat {
    override func speak() {
        print("Persian cat says: Purr!")
    }
}
class Lion: Cat {
    override func speak() {
        print("Lion says: Roar!")
    }
}

// Example usage
let myCorgi = Corgi(legs: 4)
myCorgi.speak() // Output: Corgi says: Yip yip!

let myPoodle = Poodle(legs: 4)
myPoodle.speak() // Output: Poodle says: Arf!

let myPersian = Persian(legs: 4, isTame: true)
myPersian.speak() // Output: Persian cat says: Purr!

let myLion = Lion(legs: 4, isTame: false)
myLion.speak() // Output: Lion says: Roar!

