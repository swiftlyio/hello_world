import Swiftly
import HTTP
import Foundation

let s = try Swiftly()

s.define("hello") { (req) -> ResponseRepresentable in
    return "Hello World!"
}

s.define("date") { (req) -> ResponseRepresentable in
    let formatter = DateFormatter()
    formatter.timeStyle = .long
    formatter.dateStyle = .long
    
    let date = Date()
    return formatter.string(from: date)
}

s.define("helloyou") { (req) -> ResponseRepresentable in
    if let name = req.json?["name"]?.string {
        return "Hello \(name)"
    }
    
    return "Hello Stranger!"
}

try s.run()
