//
//  AccountDO.swift
//  AppIosDGJ
//
//  Created by David GJ on 22/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation

struct AccountDO: Codable {
    let accountBalanceInCents: Int
    let accountCurrency: String
    let accountID: Int
    let accountName: String
    let accountNumber: AccountNumberDO
    let accountType, alias: String
    let isVisible: Bool
    let iban: String
    let linkedAccountID: Int?
    let productName: String?
    let productType, savingsTargetReached, targetAmountInCents: Int?
    
    enum CodingKeys: String, CodingKey {
        case accountBalanceInCents, accountCurrency
        case accountID = "accountId"
        case accountName, accountNumber, accountType, alias, isVisible, iban
        case linkedAccountID = "linkedAccountId"
        case productName, productType, savingsTargetReached, targetAmountInCents
    }
}

enum AccountNumberDO: Codable {
    case integer(Int)
    case string(String)
    
    func getStringValue() -> String {
        switch self {
        case .integer(let x):
            return String(x)
        case .string(let x):
            return x
        @unknown default:
            return ""
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(AccountNumberDO.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for AccountNumber"))
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}
