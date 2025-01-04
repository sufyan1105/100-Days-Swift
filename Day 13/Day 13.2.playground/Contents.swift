import Cocoa

func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

//func getRandomNumber() -> Equatable {
//    Int.random(in: 1...6)
//}

//func getRandomBool() -> Equatable {
//    Bool.random()
//}

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}
