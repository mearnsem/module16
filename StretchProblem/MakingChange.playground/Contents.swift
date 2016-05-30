//: Playground - noun: a place where people can play

import UIKit

enum Currency {
    case dollar
    case quarter
    case dime
    case nickel
    case penny
}

class Coin {
    let type: Currency
    let quantity: Int
    
    init(type: Currency, quantity: Int) {
        self.type = type
        self.quantity = quantity
    }
}


func makeChange(amount: Double) -> String {
    var changeString = ""
    
    let amountInCents = Int(amount * 100)
    
    let dollars = Coin(type: .dollar, quantity: (amountInCents / 100))
    let quarters = Coin(type: .quarter, quantity: (amountInCents - dollars.quantity * 100) / 25)
    let dimes = Coin(type: .dime, quantity: (amountInCents - dollars.quantity * 100 - quarters.quantity * 25) / 10)
    let nickels = Coin(type: .nickel, quantity: (amountInCents - dollars.quantity * 100 - quarters.quantity * 25 - dimes.quantity * 10) / 5)
    let pennies = Coin(type: .penny, quantity: amountInCents % 5)
    
    let changeArray = [dollars, quarters, dimes, nickels, pennies]
    
    
    return changeString
}



print(makeChange(2.15))
