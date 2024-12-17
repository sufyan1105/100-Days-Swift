import Cocoa

var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")
print(people)

//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}

//var day = Weekday.monday
//day = Weekday.tuesday
//day = Weekday.friday

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday
day = .friday
