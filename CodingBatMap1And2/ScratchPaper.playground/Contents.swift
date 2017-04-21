//: Playground - noun: a place where people can play

import UIKit



//3. Given an array of strings, return a Map<String, Boolean> where each different string is a key and its value is true if that string appears 2 or more times in the array.
func wordMultiple(_ input: [String]) -> [String: Bool] {
    var back: [String: Bool] = [:]
    
    for i in input {
        let keyCount = input.filter { $0 == i }.count
    
        if keyCount >= 2 {
            back.updateValue(true, forKey: i)
        } else {
            back.updateValue(false, forKey: i)
        }
    }
        return back
}


wordMultiple(["a", "b", "a", "c", "b"]) == ["a": true, "b": true, "c": false]
wordMultiple(["c", "b", "a"]) == ["a": false, "b": false, "c": false]
wordMultiple(["c", "c", "c", "c"]) == ["c": true]


wordMultiple(["a", "b", "a", "c", "b"])
wordMultiple(["c", "b", "a"])
wordMultiple(["c", "c", "c", "c"])