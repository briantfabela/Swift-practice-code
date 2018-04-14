//: Playground - noun: a place where people can play

import UIKit

// return number between 'start' and (including) 'end' with 'decimals' amount of decimals
func randomInRangeDouble(start: Int, end: Int, decimals: Double) -> Double {
    // constants made outside return statement to prevent arithmetic from taking place as parameter
    let n: Double = Double(arc4random_uniform(UInt32(end - start))) + drand48() + Double(start)
    let nPlaces: Double = pow(10, decimals) // 'n' rounded to 'nPlaces'
    return Double(round(nPlaces * n)/nPlaces)
}

func randomInRangeInt (start: Int, end: Int) -> Int {
    let n: Int = (end - start) + 1 // prevent arithmetic from taking place as parameter
    return Int(arc4random_uniform(UInt32(n))) + start
}
