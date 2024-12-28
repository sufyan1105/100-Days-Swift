import Cocoa

import Foundation

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Step 1: Filter out even numbers
let oddNumbers = luckyNumbers.filter { $0 % 2 != 0 }

// Step 2: Sort the array in ascending order
let sortedNumbers = oddNumbers.sorted()

// Step 3: Map them to strings in the specified format
let luckyNumberStrings = sortedNumbers.map { "\($0) is a lucky number" }

luckyNumberStrings.forEach { print($0) }
