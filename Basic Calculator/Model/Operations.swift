//
//  Operations.swift
//  Basic Calculator
//
//  Created by Alan Díaz on 11/29/21.
//

import Foundation

func +(lhs: Int, rhs: Double) -> Double {
    return Double(lhs) + rhs
}
func +(lhs: Double, rhs: Int) -> Double {
    return lhs + Double(rhs)
}

func -(lhs: Int, rhs: Double) -> Double {
    return Double(lhs) - rhs
}
func -(lhs: Double, rhs: Int) -> Double {
    return lhs - Double(rhs)
}

func *(lhs: Int, rhs: Double) -> Double {
    return Double(lhs) * rhs
}
func *(lhs: Double, rhs: Int) -> Double {
    return lhs * Double(rhs)
}

func /(lhs: Int, rhs: Double) -> Double {
    return Double(lhs) / rhs
}
func /(lhs: Double, rhs: Int) -> Double {
    return lhs / Double(rhs)
}


struct Operations{
    
    func add(arr: [Any]) -> Any {
        if arr[0] is Int && arr[1] is Int{
             let x = arr[0] as! Int
             let y = arr[1] as! Int
             let result = x + y
             let calc = result as! Any
            return calc
        } else if arr[0] is Int && arr[1] is Double {
             let x = arr[0] as! Int
             let y = arr[1] as! Double
            let result = x + y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Int {
             let x = arr[0] as! Double
             let y = arr[1] as! Int
            let result = x + y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Double {
             let x = arr[0] as! Double
             let y = arr[1] as! Double
            let result = x + y
            let calc = result as! Any
            return calc
            }
        let result = 0
        let calc = result as! Any
        return calc
    }
    
    func subtract(arr: [Any]) -> Any {
        if arr[0] is Int && arr[1] is Int{
             let x = arr[0] as! Int
             let y = arr[1] as! Int
             let result = x - y
             let calc = result as! Any
            return calc
        } else if arr[0] is Int && arr[1] is Double {
             let x = arr[0] as! Int
             let y = arr[1] as! Double
            let result = x - y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Int {
             let x = arr[0] as! Double
             let y = arr[1] as! Int
            let result = x - y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Double {
             let x = arr[0] as! Double
             let y = arr[1] as! Double
            let result = x - y
            let calc = result as! Any
            return calc
            }
        let result = 0
        let calc = result as! Any
        return calc
    }
    
    func multiply(arr: [Any]) -> Any {
        if arr[0] is Int && arr[1] is Int{
             let x = arr[0] as! Int
             let y = arr[1] as! Int
             let result = x * y
             let calc = result as! Any
            return calc
        } else if arr[0] is Int && arr[1] is Double {
             let x = arr[0] as! Int
             let y = arr[1] as! Double
            let result = x * y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Int {
             let x = arr[0] as! Double
             let y = arr[1] as! Int
            let result = x * y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Double {
             let x = arr[0] as! Double
             let y = arr[1] as! Double
            let result = x * y
            let calc = result as! Any
            return calc
            }
        let result = 0
        let calc = result as! Any
        return calc
    }
    
    func divide(arr: [Any]) -> Any {
        if arr[0] is Int && arr[1] is Int{
             let x = arr[0] as! Int
             let y = arr[1] as! Int
             let result = x / y
             let calc = result as! Any
            return calc
        } else if arr[0] is Int && arr[1] is Double {
             let x = arr[0] as! Int
             let y = arr[1] as! Double
            let result = x / y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Int {
             let x = arr[0] as! Double
             let y = arr[1] as! Int
            let result = x / y
            let calc = result as! Any
            return calc
        } else if arr[0] is Double && arr[1] is Double {
             let x = arr[0] as! Double
             let y = arr[1] as! Double
            let result = x / y
            let calc = result as! Any
            return calc
            }
        let result = 0
        let calc = result as! Any
        return calc
    }
    
    func percentage(arr: [Any]) -> Any {
        
        if arr[0] is Int{
            let x = arr[0] as! Int
            let result = x / 100
            let calc = result as! Any
            return calc
        }
        else if arr[0] is Double{
            let x = arr[0] as! Double
            let result = x / 100.0
            let calc = result as! Any
            return calc
        }
        let result = 0
        let calc = result as! Any
        return calc
    }
    
}

