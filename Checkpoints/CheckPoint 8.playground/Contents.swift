import Cocoa

// Define the protocol `Building`
protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var estateAgent: String { get }
    
    func printSalesSummary()
}

// Define the `House` struct that conforms to `Building`
struct House: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    func printSalesSummary() {
        print("House with \(rooms) rooms costs $\(cost). Sold by \(estateAgent).")
    }
}

// Define the `Office` struct that conforms to `Building`
struct Office: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    func printSalesSummary() {
        print("Office with \(rooms) rooms costs $\(cost). Sold by \(estateAgent).")
    }
}

// Example usage
let myHouse = House(rooms: 5, cost: 350000, estateAgent: "Jane Doe Realty")
myHouse.printSalesSummary()

let myOffice = Office(rooms: 10, cost: 750000, estateAgent: "Corporate Spaces Inc.")
myOffice.printSalesSummary()



