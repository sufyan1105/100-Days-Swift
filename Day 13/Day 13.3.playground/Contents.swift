import Cocoa

// Trimming whitespaces from a string
var quote = "   The truth is rarely pure and never simple   "

// Method 1: Using `trimmingCharacters`
let trimmed1 = quote.trimmingCharacters(in: .whitespacesAndNewlines)

// Method 2: Adding an extension to String
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    mutating func trim() {
        self = self.trimmed()
    }

    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed2 = quote.trimmed()

// Method 3: Standalone trimming function
func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let trimmed3 = trim(quote)

// Mutating the original quote
quote.trim()

// Using `lines` computed property
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""
print("Number of lines in lyrics:", lyrics.lines.count)

// Defining the `Book` struct
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int

    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

// Example usage of the `Book` struct
let lotr = Book(title: "Lord of the Rings", pageCount: 1178)
print("Title:", lotr.title)
print("Page Count:", lotr.pageCount)
print("Estimated Reading Hours:", lotr.readingHours)

// Extension for additional flexibility (optional but redundant here)
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
