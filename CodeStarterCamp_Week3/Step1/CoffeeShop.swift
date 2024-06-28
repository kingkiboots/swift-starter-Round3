//
//  Coffee.swift
//  CodeStarterCamp_Week3
//
//  Created by 김기현 on 6/24/24.
//

import Foundation

class CoffeeShop {
    private var name: String
    private var barista: Person?
    private var profit: Int = 0
    private var menuBoard: [Coffee : Int]
    var pickUpTable: [Coffee] = []
    
    
    init (name: String, todaysMenu: [Coffee : Int]) {
        self.name = name
        self.menuBoard = todaysMenu
    }
    
    func hireBarista(_ barista: Person) {
        self.barista = barista
    }
    
    func makeCoffee(order coffees: [Coffee]) {
        // 커피를 만들면 pickUpTable 에 할당할 수 있도록 해봅시다.
        for coffee in coffees{
            print("\(coffee.rawValue)를 만들었습니다.")
        }
    }
    
    func takeOrder(coffees: [Coffee]) {
        for coffee in coffees{
            profit += coffee.getPrice()
        }
        self.makeCoffee(order: coffees)
        self.pickUpTable += coffees
    }
}
