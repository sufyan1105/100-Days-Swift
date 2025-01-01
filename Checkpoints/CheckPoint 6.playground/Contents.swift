import Cocoa

import Foundation

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int
    
    // Initialize the struct with default gear
    init(model: String, numberOfSeats: Int, currentGear: Int = 1) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
    }
    
    // Method to change the gear up
    mutating func gearUp() {
        if currentGear < 10 {
            currentGear += 1
        } else {
            print("Cannot increase gear. Already at maximum gear.")
        }
    }
    
    // Method to change the gear down
    mutating func gearDown() {
        if currentGear > 1 {
            currentGear -= 1
        } else {
            print("Cannot decrease gear. Already at minimum gear.")
        }
    }
}

// Example usage
var myCar = Car(model: "Tesla Model 3", numberOfSeats: 5)
print("Initial gear: \(myCar.currentGear)")

myCar.gearUp()
print("Gear after shifting up: \(myCar.currentGear)")

myCar.gearDown()
print("Gear after shifting down: \(myCar.currentGear)")

myCar.gearDown() // Attempt to shift below minimum gear

