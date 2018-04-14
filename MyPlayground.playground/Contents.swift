//: Playground - noun: a place where people can play

import UIKit

func randomInRangeDouble(start: Int, end: Int, decimals: Double) -> Double {
    let n: Double = Double(arc4random_uniform(UInt32(end - start))) + drand48() + Double(start)
    let nPlaces: Double = pow(10, decimals)
    return Double(round(nPlaces * n)/nPlaces)
}

for _ in 1...20 {
    print(randomInRangeDouble(start: 0, end: 5, decimals: 2))
}
