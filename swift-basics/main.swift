// Darshil Malaviya — Swift Learning Journey 🚀

// --------------------------------------
// MARK: - Day 1 — Variables & Constants
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
// MARK: - Day 2 — Arrays & Loops
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
