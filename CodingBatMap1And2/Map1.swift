//
//  Map1.swift
//  CodingBatMap1And2
//
//  Created by Tennant Shaw on 4/19/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

//1. Modify and return the given map as follows: if the key "a" has a value, set the key "b" to have that value, and set the key "a" to have the value "". Basically "b" is a bully, taking the value and replacing it with the empty string.
func mapBully(_ input: [String: String]) -> [String: String]{
    var back = input
    
    if let aValue = input["a"] {
        back["b"] = aValue
        back["a"] = ""
        return back
    } else {
        return input
    }
}


//2. Given a map of food keys and topping values, modify and return the map as follows: if the key "ice cream" is present, set its value to "cherry". In all cases, set the key "bread" to have the value "butter".
func topping1(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let _ = back["ice cream"] {
        back["ice cream"] = "cherry"
    }
    
    back["bread"] = "butter"
    
    return back
}


//3.  Modify and return the given map as follows: if the keys "a" and "b" are both in the map and have equal values, remove them both.
func mapAB2(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"],
        aValue == bValue {
        
        back.removeValue(forKey: "a")
        back["b"] = nil
    }
    
    return back
}


//4. Modify and return the given map as follows: if the key "a" has a value, set the key "b" to have that same value. In all cases remove the key "c", leaving the rest of the map unchanged.
func mapShare(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if back["a"] != nil {
        back["b"] = back["a"]
    }
    
    back.removeValue(forKey: "c")
    return back
}

//5. Given a map of food keys and their topping values, modify and return the map as follows: if the key "ice cream" has a value, set that as the value for the key "yogurt" also. If the key "spinach" has a value, change that value to "nuts".
func topping2(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let value = back["ice cream"] {
        back["yogurt"] = value
    }
    
    if back["spinach"] != nil {
        back["spinach"] = "nuts"
    }
    
    return back
}

//6. Modify and return the given map as follows: if exactly one of the keys "a" or "b" has a value in the map (but not both), set the other to have that same value in the map.
func mapAB3(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if back["a"] != nil {
        if  back["b"] == nil {
            back["b"] = back["a"]
        } else {
            return back
        }
    }
    
    if back["b"] != nil {
        if  back["a"] == nil {
            back["a"] = back["b"]
        } else {
            return back
        }
    }
    
    return back
}

//7. Modify and return the given map as follows: for this problem the map may or may not contain the "a" and "b" keys. If both keys are present, append their 2 string values together and store the result under the key "ab".
func mapAB(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back ["b"] {
        back["ab"] = aValue + bValue
    }
    return back
}

//8. Given a map of food keys and topping values, modify and return the map as follows: if the key "potato" has a value, set that as the value for the key "fries". If the key "salad" has a value, set that as the value for the key "spinach".
func topping3(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["potato"] {
        back["fries"] = aValue
    }
    
    if let bValue = back["salad"] {
        back["spinach"] = bValue
    }
    
    return back
}


//9. Modify and return the given map as follows: if the keys "a" and "b" have values that have different lengths, then set "c" to have the longer value. If the values exist and have the same length, change them both to the empty string in the map.
func mapAB4(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"] {
        let aLength = aValue.characters.count
        let bLength = bValue.characters.count
        
        if aLength < bLength {
            back["c"] = bValue
        } else  if aLength > bLength {
            back["c"] = aValue
        } else {
            back["a"] = ""
            back["b"] = ""
        }
    }
    
    return back
}






