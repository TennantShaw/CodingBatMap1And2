//
//  CodingBatMap1And2Tests.swift
//  CodingBatMap1And2Tests
//
//  Created by Tennant Shaw on 4/19/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import XCTest
@testable import CodingBatMap1And2

class CodingBatMap1And2Tests: XCTestCase {
    
    func testMapBully() {
        let result = mapBully(["a": "candy", "b": "dirt"])
        let expected: [String: String] = ["a": "", "b": "candy"]
        XCTAssertEqual(result, expected)
    }
    
    func testTopping1() {
        let result = topping1(["ice cream": "peanuts"])
        let expected: [String: String] = ["bread": "butter", "ice cream": "cherry"]
        XCTAssertEqual(result, expected)
    }

    func testMapAB2() {
        let result = mapAB2(["a": "aaa", "b": "aaa", "c": "cake"])
        let expected: [String: String] = ["c": "cake"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapShare() {
        let result = mapShare(["a": "aaa", "b": "bbb", "c": "ccc"])
        let expected: [String: String] = ["a": "aaa", "b": "aaa"]
        XCTAssertEqual(result, expected)
    }
    
    func testTopping2() {
        let result = topping2(["ice cream": "cherry"])
        let expected: [String: String] = ["yogurt": "cherry", "ice cream": "cherry"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB3() {
        let result = mapAB3(["a": "aaa", "c": "cake"])
        let expected: [String: String] = ["a": "aaa", "b": "aaa", "c": "cake"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB() {
        let result = mapAB(["a": "Hi", "b": "There"])
        let expected: [String: String] = ["a": "Hi", "ab": "HiThere", "b": "There"]
        XCTAssertEqual(result, expected)
    }
    
    func testTopping3() {
        let result = topping3(["potato": "ketchup"])
        let expected: [String: String] = ["potato": "ketchup", "fries": "ketchup"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB4() {
        let result = mapAB4(["a": "aaa", "b": "bb", "c": "cake"])
        let expected: [String: String] = ["a": "aaa", "b": "bb", "c": "aaa"]
        XCTAssertEqual(result, expected)
    }
    
    //---------
    
    func testWord0() {
        let result = word0(["a", "b", "a", "b"])
        let expected: [String: Int] = ["a": 0, "b": 0]
        XCTAssertEqual(result, expected)
    }
    
    func testWordCount() {
        let result = wordCount(["a", "b", "a", "c", "b"])
        let expected: [String: Int] = ["a": 2, "b": 2, "c": 1]
        XCTAssertEqual(result, expected)
    }
    
    func testWordMultiple() {
        let result = wordMultiple(["a", "b", "a", "c", "b"])
        let expected: [String: Bool] = ["a": true, "b": true, "c": false]
        XCTAssertEqual(result, expected)
    }
    
    func testWordLen() {
        let result = wordLen(["a", "bb", "a", "bb"])
        let expected: [String: Int] = ["bb": 2, "a": 1]
        XCTAssertEqual(result, expected)
    }
    
    func testFirstChar() {
        let result = firstChar(["salt", "tea", "soda", "toast"])
        let expected: [String: String] = ["s": "saltsoda", "t": "teatoast"]
        XCTAssertEqual(result, expected)
    }
    
    func testAllSwap() {
        let result = allSwap(["ab", "ac"])
        let expected: [String] = ["ac", "ab"]
        XCTAssertEqual(result, expected)
    }
    
    func testPairs() {
        let result = pairs(["code", "bug"])
        let expected: [String: String] = ["b": "g", "c": "e"]
        XCTAssertEqual(result, expected)
    }
    
    func testWordAppend() {
        let result = wordAppend(["a", "b", "a"])
        let expected: String = "a"
        XCTAssertEqual(result, expected)
    }
    
    func testFirstSwap() {
        let result = firstSwap(["ab", "ac"])
        let expected: [String] = ["ac", "ab"]
        XCTAssertEqual(result, expected)
    }
    
}


/*
 1M1.
 mapBully(["a": "candy", "b": "dirt"]) == ["a": "", "b": "candy"]
 mapBully(["a": "candy"]) == ["a": "", "b": "candy"]
 mapBully(["a": "candy", "b": "carrot", "c": "meh"]) == ["a": "", "b": "candy", "c": "meh"]
 
 2M1.
 topping1(["ice cream": "peanuts"]) == ["bread": "butter", "ice cream": "cherry"]
 topping1([:]) == ["bread": "butter"]
 topping1(["pancake": "syrup"]) == ["bread": "butter", "pancake": "syrup"]
 
 3M1.
 mapAB2(["a": "aaa", "b": "aaa", "c": "cake"]) == ["c": "cake"]
 mapAB2(["a": "aaa", "b": "bbb"]) == ["a": "aaa", "b": "bbb"]
 mapAB2(["a": "aaa", "b": "bbb", "c": "aaa"]) == ["a": "aaa", "b": "bbb", "c": "aaa"]
 
 4M1.
 mapShare(["a": "aaa", "b": "bbb", "c": "ccc"]) == ["a": "aaa", "b": "aaa"]
 mapShare(["b": "xyz", "c": "ccc"]) == ["b": "xyz"]
 mapShare(["a": "aaa", "c": "meh", "d": "hi"]) == ["a": "aaa", "b": "aaa", "d": "hi"]

 5M1.
 topping2(["ice cream": "cherry"]) == ["yogurt": "cherry", "ice cream": "cherry"]
 topping2(["spinach": "dirt", "ice cream": "cherry"]) == ["yogurt": "cherry", "spinach": "nuts", "ice cream": "cherry"]
 topping2(["yogurt": "salt"]) == ["yogurt": "salt"]

 6M1.
 mapAB3(["a": "aaa", "c": "cake"]) == ["a": "aaa", "b": "aaa", "c": "cake"]
 mapAB3(["b": "bbb", "c": "cake"]) == ["a": "bbb", "b": "bbb", "c": "cake"]
 mapAB3(["a": "aaa", "b": "bbb", "c": "cake"]) == ["a": "aaa", "b": "bbb", "c": "cake"]
 
 7M1.
 mapAB(["a": "Hi", "b": "There"]) == ["a": "Hi", "ab": "HiThere", "b": "There"]
 mapAB(["a": "Hi"]) == ["a": "Hi"]
 mapAB(["b": "There"]) == ["b": "There"]
 
 8M1.
 topping3(["potato": "ketchup"]) == ["potato": "ketchup", "fries": "ketchup"]
 topping3(["potato": "butter"]) == ["potato": "butter", "fries": "butter"]
 topping3(["salad": "oil", "potato": "ketchup"]) == ["spinach": "oil", "salad": "oil", "potato": "ketchup", "fries": "ketchup"]
 
 9M1.
 mapAB4(["a": "aaa", "b": "bb", "c": "cake"]) == ["a": "aaa", "b": "bb", "c": "aaa"]
 mapAB4(["a": "aa", "b": "bbb", "c": "cake"]) == ["a": "aa", "b": "bbb", "c": "bbb"]
 mapAB4(["a": "aa", "b": "bbb"]) == ["a": "aa", "b": "bbb", "c": "bbb"]
 
 -------------
 
 1M2.
 word0(["a", "b", "a", "b"]) == ["a": 0, "b": 0]
 word0(["a", "b", "a", "c", "b"]) == ["a": 0, "b": 0, "c": 0]
 word0(["c", "b", "a"]) == ["a": 0, "b": 0, "c": 0]

 2M2.
 wordCount(["a", "b", "a", "c", "b"]) == ["a": 2, "b": 2, "c": 1]
 wordCount(["c", "b", "a"]) == ["a": 1, "b": 1, "c": 1]
 wordCount(["c", "c", "c", "c"]) == ["c": 4]

 3M2.
 wordMultiple(["a", "b", "a", "c", "b"]) == ["a": true, "b": true, "c": false]
 wordMultiple(["c", "b", "a"]) == ["a": false, "b": false, "c": false]
 wordMultiple(["c", "c", "c", "c"]) == ["c": true]
 
 4M2.
 wordLen(["a", "bb", "a", "bb"]) == ["bb": 2, "a": 1]
 wordLen(["this", "and", "that", "and"]) == ["that": 4, "and": 3, "this": 4]
 wordLen(["code", "code", "code", "bug"]) == ["code": 4, "bug": 3]

 5M2.
 firstChar(["salt", "tea", "soda", "toast"]) == ["s": "saltsoda", "t": "teatoast"]
 firstChar(["aa", "bb", "cc", "aAA", "cCC", "d"]) == ["a": "aaaAA", "b": "bb", "c": "cccCC", "d": "d"]
 firstChar([]) == []
 
 6M2.
 allSwap(["ab", "ac"]) == ["ac", "ab"]
 allSwap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) == ["ay", "by", "cy", "cx", "bx", "ax", "azz", "aaa"]
 allSwap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) == ["ay", "by", "ax", "bx", "aj", "ai", "by", "bx"]

 7M2.
 pairs(["code", "bug"]) == ["b": "g", "c": "e"]
 pairs(["man", "moon", "main"]) == ["m": "n"]
 pairs(["man", "moon", "good", "night"]) == ["g": "d", "m": "n", "n": "t"]

 8M2.
 wordAppend(["a", "b", "a"]) == "a"
 wordAppend(["a", "b", "a", "c", "a", "d", "a"]) == "aa"
 wordAppend(["a", "", "a"]) == "a"
 
 9M2.
 firstSwap(["ab", "ac"]) == ["ac", "ab"]
 firstSwap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) == ["ay", "by", "cy", "cx", "bx", "ax", "aaa", "azz"]
 firstSwap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) == ["ay", "by", "ax", "bx", "ai", "aj", "bx", "by"]
 */
