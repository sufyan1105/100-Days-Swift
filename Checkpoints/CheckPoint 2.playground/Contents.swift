import Cocoa

let array = ["Apple", "banana","apple", "grapes" , "orange", "orange"]

let totalCount = array.count

print("Total count of elements in array is \(totalCount)")

let uniqueCount = Set(array).count

print("Total count of unique elements in array is \(uniqueCount)")
