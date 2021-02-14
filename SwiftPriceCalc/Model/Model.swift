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
    let extraCharges: Charges?
}

struct Charges: Codable {
    let firstName: String?
    let firstValue: Int?
    let secondName: String?
    let secondValue: Int?
    let thirdName: String?
    let thirdValue: Int?
    let forthName: String?
    let forthValue: Int?
    let fifthName: String?
    let fifthValue: Int?
}
