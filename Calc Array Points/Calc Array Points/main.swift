//
//  main.swift
//  Calc Array Points
//
//  Created by AT on 10/12/17.
//  Copyright © 2017 AT. All rights reserved.
//

import Foundation

// Build a calculator

func add(_a:Int, _b:Int) -> Int {
    return _a + _b
}

func subtract(_a:Int, _b:Int) -> Int {
    return _a - _b
}

func multiply(_a:Int, _b:Int) -> Int {
    return _a * _b
}

func divide(_a:Int, _b:Int) -> Int {
    return _a / _b
}

func mathOperation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

// Array fun

func adding(arr:[Int]) -> Int {
    var result = 0
    for index in arr {
        result += arr[index]
    }
    return result
}

func multiplying(arr:[Int]) -> Int {
    var result = 1
    for index in arr {
        result *= arr[index]
    }
    return result
}

func count(arr:[Int]) -> Int {
    return arr.count
}

func avg(arr:[Int]) -> Int {
    var result = 0
    for index in arr {
        result += arr[index]
    }
    return result / (arr.count - 1)
}

func arrayOperation(arr:[Int], op: ([Int]) -> Int) -> Int {
    return op(arr)
}

// Points

func tupleAdd(p1:(Int, Int), p2:(Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func tupleSubtract(p1:(Int, Int), p2:(Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

func dictionaryAdd(point1:[String : Int], point2:[String : Int]) -> [String : Int] {
    if point1["x"] == nil || point1["y"] == nil || point2["x"] == nil || point2["y"] == nil {
        print("Invalid! Please try again.")
        return dictionaryAdd(point1:point1, point2:point2)
    } else {
        return ["x" : point1["x"]! + point2["x"]!, "y" : point1["y"]! + point2["y"]!]
    }
}

func dictionarySubtract(point1:[String : Int], point2:[String : Int]) -> [String : Int] {
    if point1["x"] == nil || point1["y"] == nil || point2["x"] == nil || point2["y"] == nil {
        print("Invalid! Please try again.")
        return dictionarySubtract(point1:point1, point2:point2)
    } else {
        return ["x" : point1["x"]! - point2["x"]!, "y" : point1["y"]! - point2["y"]!]
    }
}
