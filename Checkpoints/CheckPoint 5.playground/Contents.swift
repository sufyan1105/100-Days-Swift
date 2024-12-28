import Cocoa

import Foundation

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let oddNumbers = luckyNumbers.filter { $0 % 2 != 0 }

let sortedNumbers = oddNumbers.sorted()

let luckyNumberStrings = sortedNumbers.map { "\($0) is a lucky number" }

luckyNumberStrings.forEach { print($0) }
