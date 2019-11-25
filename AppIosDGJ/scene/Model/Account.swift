//
//  Account.swift
//  AppIosDGJ
//
//  Created by David GJ on 24/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation

struct Account {
    let accountBalanceInCents: Int
    let accountCurrency: String
    let accountID: Int
    let accountName: String
    let accountNumber: String
    let accountType, alias: String
    var isVisible: Bool
    let iban: String
    let linkedAccountID: Int?
    let productName: String?
    let productType, savingsTargetReached, targetAmountInCents: Int?
    
    init(accountDo: AccountDO) {
        self.accountBalanceInCents = accountDo.accountBalanceInCents
        self.accountCurrency = accountDo.accountCurrency
        self.accountID = accountDo.accountID
        self.accountName = accountDo.accountName
        self.accountNumber = accountDo.accountNumber.getStringValue()
        self.accountType = accountDo.accountType
        self.alias = accountDo.alias
        self.isVisible = accountDo.isVisible
        self.iban = accountDo.iban
        self.linkedAccountID = accountDo.linkedAccountID
        self.productName = accountDo.productName
        self.productType = accountDo.productType
        self.savingsTargetReached = accountDo.savingsTargetReached
        self.targetAmountInCents = accountDo.targetAmountInCents
    }
    
    func getDecription() -> String {
        let description = "Name_\(accountName) Iban\(iban) Balance\(accountBalanceInCents)"
        return description
    }
}
