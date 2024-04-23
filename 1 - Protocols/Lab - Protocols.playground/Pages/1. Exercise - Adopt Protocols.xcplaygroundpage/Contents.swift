/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human: CustomStringConvertible, Equatable, Comparable, Encodable {
    
    let name: String
    let age: Int
    
    init(name:String, age: Int){
        self.name = name;
        self.age = age;
    }
    var description: String {
        return "My name is \(name) and I am \(age) years old!"
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
}
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
let human1 = Human(name: "Kartik", age:18)
print(human1)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
let human2 = Human(name: "Kartik", age:18)
print(human1 == human2)

//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
let human3 = Human(name: "Abhishek", age:20);
let human4 = Human(name: "Pawan", age:21);
let human5 = Human(name: "Himanshu", age:22);
let people : [Human] = [human1,human2,human3,human4,human5]

let sortedPeople = people.sorted()

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(human5), let text = String(data:jsonData, encoding: .utf8){
    print(text)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
