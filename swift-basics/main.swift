// Darshil Malaviya — Swift Learning Journey 🚀

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
print("Goal: 40000+ 💪")


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
    print("Hello, \(name)! 👋")
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
print("New Salary: ₹\(newSalary) 💰")

introduce(name: "Darshil", city: "Ahmedabad", role: "iOS Developer")
