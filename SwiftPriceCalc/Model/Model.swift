//
//  Model.swift
//  SwiftPriceCalc
//
//  Created by The App Experts on 14/02/2021.
//  Copyright © 2021 The App Experts. All rights reserved.
//

import Foundation

struct Products: Codable {
    let products: [Product]?
}

struct Product: Codable {
    let name: String?
    let cost: Int?
    let VAT: Int?
    let profit: Int?
    let extraCharges: [Charges]?
}

struct Charges: Codable {
    let first: Charge?
    let second: Charge?
    let third: Charge?
    let forth: Charge?
    let fifth: Charge?
}

struct Charge: Codable {
    let name: String?
    let value: Int?
}
