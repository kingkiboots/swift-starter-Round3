//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/* Step1 */
let misterLee: Person = Person(name: "이커피", deposit: 100000)
let missKim: Person = Person(name: "김원두")

let todaysMenu: [Coffee : Int] = [
    .americano: Coffee.americano.getPrice(),
    .latte: Coffee.latte.getPrice()
]
let yagombucks: CoffeeShop = CoffeeShop(name: "야곰벅스", todaysMenu: todaysMenu)
yagombucks.hireBarista(missKim)

misterLee.buyCoffee(at: yagombucks, menu: [.americano])

dump(missKim)
dump(misterLee)
dump(yagombucks.pickUpTable)
