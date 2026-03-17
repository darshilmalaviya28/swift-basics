// Darshil Malaviya — Swift Learning Journey

// --------------------------------------
// MARK: Day 1 — Variables & Constants
// --------------------------------------


// Variables
var name = "Darshil"
var age = 22
var salary = 25000.0

// Constants
let city = "Gujarat"
let language = "Swift"

// Print
print("Name: \(name)")
print("City: \(city)")
print("Language: \(language)")
print("Current Salary: \(salary)")
print("Goal: 40000+")


// --------------------------------------
// MARK: Day 2 — Arrays & Loops
// --------------------------------------


// Array
var skills = ["Swift", "UIKit", "Auto Layout", "REST APIs"]
var salaries = [15000, 25000, 35000, 40000]

// Array access
print("Current skill: \(skills[0])")
print("Dream salary: \(salaries[3])")

// For loop
print("\nMy Skills")
for skill in skills {
    print("\(skill)")
}

// Loop with index
print("\nSalary Journey")
for i in 0..<salaries.count {
    print("Step \(i + 1): ₹\(salaries[i])")
}

// Array add/remove
skills.append("SwiftUI")
print("\nNew skill added: \(skills.last!)")
print("Total skills: \(skills.count)")


// --------------------------------------
// MARK: Day 3 — Functions
// --------------------------------------


// Basic function
func greet(name: String) {
    print("Hello, \(name)!")
}

// Function with return value
func calculateSalary(current: Double, increment: Double) -> Double {
    return current + increment
}

// Function with multiple parameters
func introduce(name: String, city: String, role: String) {
    print("I am \(name) from \(city), working as \(role)")
}

// Calling functions
greet(name: "Darshil")

let newSalary = calculateSalary(current: 15000, increment: 10000)
print("New Salary: ₹\(newSalary)")

introduce(name: "Darshil", city: "Ahmedabad", role: "iOS Developer")


// --------------------------------------
// MARK: Day 4 — Optionals
// --------------------------------------


// Optional — value hoi pan sake, na pan hoi
var middleName: String? = nil
var phoneNumber: String? = "9313890045"

// Optional binding — if let
if let phone = phoneNumber {
    print("Phone: \(phone)")
} else {
    print("No phone number")
}

// Nil coalescing — ?? operator
let optionalName: String? = nil
let displayName = optionalName ?? "Darshil Malaviya"
print("Display Name: \(displayName)")

// Guard let
func printMiddleName(name: String?) {
    guard let unwrapped = name else {
        print("No middle name found!")
        return
    }
    print("Middle name: \(unwrapped)")
}

printMiddleName(name: middleName)
printMiddleName(name: "Kumar")


// --------------------------------------
// MARK: Day 5 — Class & Struct
// --------------------------------------


// Struct
struct Developer {
    var name: String
    var city: String
    var experience: Double
    var salary: Double
    
    func introduce() {
        print("I am \(name) from \(city)")
        print("Experience: \(experience) years")
        print("Salary: ₹\(salary)")
    }
}

// Class
class iOSDeveloper {
    var name: String
    var skills: [String]
    
    init(name: String, skills: [String]) {
        self.name = name
        self.skills = skills
    }
    
    func showSkills() {
        print("\n\(name)'s Skills:")
        for skill in skills {
            print("\(skill)")
        }
    }
}

// Using Struct
var darshil = Developer(
    name: "Darshil Malaviya",
    city: "Ahmedabad",
    experience: 1.3,
    salary: 15000
)
darshil.introduce()
darshil.salary = 40000
print("New Salary: ₹\(darshil.salary)")

// Using Class
let developer = iOSDeveloper(
    name: "Darshil",
    skills: ["Swift", "UIKit", "SwiftUI", "REST APIs", "CoreData"]
)
developer.showSkills()


// --------------------------------------
// MARK: Day 6 — Protocols & Extensions
// --------------------------------------


// Protocol = Rules / Blueprint
protocol Greetable {
    var name: String { get }
    func greet()
}

// Protocol adopt karo
struct IOSDeveloper: Greetable {
    var name: String
    var experience: Double
    
    func greet() {
        print("Hi! I am \(name), iOS Developer with \(experience) years experience!")
    }
}

extension Double {
    var toRupees: String {
        return "₹\(self)"
    }
}

// Use karo
let mira = IOSDeveloper(name: "Mira", experience: 1.3)
mira.greet()


let income: Double = 40000
print(income.toRupees)


// --------------------------------------
// MARK: Day 7 — Closures
// --------------------------------------


// Basic Closure
let sayHello = {
    print("Hello from Closure!")
}
sayHello()

// Closure with parameters
let addNumbers = { (a: Int, b: Int) -> Int in
    return a + b
}
let result = addNumbers(10, 20)
print("Sum: \(result)")

// Closure as function parameter
func doSomething(action: () -> Void) {
    print("Before action")
    action()
    print("After action")
}

doSomething {
    print("Darshil is coding!")
}

// Trailing closure — Array sort
var closureSalaries = [15000, 40000, 25000, 35000]
let sorted = closureSalaries.sorted { $0 < $1 }
print("\nSorted Salaries: \(sorted)")

// Map — har element pe operation
let doubled = closureSalaries.map { $0 * 2 }
print("Doubled: \(doubled)")

// Filter — condition based
let highSalaries = closureSalaries.filter { $0 > 20000 }
print("High Salaries: \(highSalaries)")


// --------------------------------------
// MARK: Day 8 — Error Handling
// --------------------------------------


// Error define karo
enum SalaryError: Error {
    case tooLow
    case negative
}

// Throwing function
func validateSalary(_ amount: Double) throws -> String {
    if amount < 0 {
        throw SalaryError.negative
    } else if amount < 20000 {
        throw SalaryError.tooLow
    }
    return "Salary is valid! ₹\(amount)"
}

// Do-Try-Catch
do {
    let result1 = try validateSalary(15000)
    print(result1)
} catch SalaryError.tooLow {
    print("Salary bahuj occhi che! Switch karo!")
} catch SalaryError.negative {
    print("Salary negative? Impossible!")
} catch {
    print("Unknown error: \(error)")
}

do {
    let result2 = try validateSalary(40000)
    print(result2)
} catch SalaryError.tooLow {
    print("Salary bahuj occhu che! Switch karo!")
} catch {
    print("Error: \(error)")
}
