//
//  Map2.swift
//  CodingBatMap1And2
//
//  Created by Tennant Shaw on 4/19/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

//1. Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, always with the value 0. For example the string "hello" makes the pair "hello":0. We'll do more complicated counting later, but for this problem the value is simply 0.
func word0(_ input: [String]) -> [String: Int] {
    var back: [String: Int] = [:]
    
    for string in input {
        back[string] = 0
    }
    
    return back
}


//2. The classic word-count algorithm: given an array of strings, return a Map<String, Integer> with a key for each different string, with the value the number of times that string appears in the array.
func wordCount(_ input: [String]) -> [String: Int] {
    var back: [String: Int] = [:]
    
    for i in input {
        let keyCount = input.filter { $0 == i }.count
        back.updateValue(keyCount, forKey: i)
    }
    
    return back
}

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

//4. Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, and the value is that string's length.
func wordLen(_ input: [String]) -> [String: Int] {
    var back: [String: Int] = [:]
    
    for string in input {
        back[string] = string.characters.count
    }
    
    return back
}


//5. Given an array of non-empty strings, return a Map<String, String> with a key for every different first character seen, with the value of all the strings starting with that character appended together in the order they appear in the array.
func firstChar(_ input: [String]) -> [String: String] {
    var back: [String: String] = [:]
    
    
    
    return back
}


//6. We'll say that 2 strings "match" if they are non-empty and their first chars are the same. Loop over and then return the given array of non-empty strings as follows: if a string matches an earlier string in the array, swap the 2 strings in the array. When a position in the array has been swapped, it no longer matches anything. Using a map, this can be solved making just one pass over the array. More difficult than it looks.
func allSwap(_ input: [String]) -> [String] {
    var back: [String] = []
    
    return back
}

//7. Given an array of non-empty strings, create and return a Map<String, String> as follows: for each string add its first character as a key with its last character as the value.
func pairs(_ input: [String]) -> [String: String] {
    var back: [String: String] = [:]
    
    return back
}

//8. Loop over the given array of strings to build a result string like this: when a string appears the 2nd, 4th, 6th, etc. time in the array, append the string to the result. Return the empty string if no string appears a 2nd time.
func wordAppend(_ input: [String]) -> String {
    var back: String = ""
    
    return back
}

//9. We'll say that 2 strings "match" if they are non-empty and their first chars are the same. Loop over and then return the given array of non-empty strings as follows: if a string matches an earlier string in the array, swap the 2 strings in the array. A particular first char can only cause 1 swap, so once a char has caused a swap, its later swaps are disabled. Using a map, this can be solved making just one pass over the array. More difficult than it looks.
func firstSwap(_ input: [String]) -> [String] {
    var back: [String] = []
    
    return back
}



