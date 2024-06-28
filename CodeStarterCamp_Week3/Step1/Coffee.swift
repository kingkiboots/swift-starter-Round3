//
//  Coffee.swift
//  CodeStarterCamp_Week3
//
//  Created by 김기현 on 6/24/24.
//

import Foundation

enum Coffee: String {
    case espresso = "에스프레소"
    case americano = "아메리카노"
    case latte = "카페라뗴"
    
    func getPrice() -> Int {
        switch self {
        case .espresso:
            return 2000
        case .americano:
            return 2900
        default:
            return 3500
        }
    }
}
