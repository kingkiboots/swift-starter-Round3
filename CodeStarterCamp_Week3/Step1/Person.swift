//
//  Person.swift
//  CodeStarterCamp_Week3
//
//  Created by 김기현 on 6/24/24.
//

import Foundation

class Person {
    private var name: String
    private var deposit: Int
    
    init(name: String, deposit: Int = 0) {
        self.name = name
        self.deposit = deposit
    }
    
    func buyCoffee(at coffeeShop: CoffeeShop, menu coffees: [Coffee]) {
        coffeeShop.takeOrder(coffees: coffees)
        for coffee in coffees {
            deposit -= coffee.getPrice()
        }
    }
}
