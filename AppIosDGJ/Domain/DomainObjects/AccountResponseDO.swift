//
//  AccountResponseDO.swift
//  AppIosDGJ
//
//  Created by David GJ on 22/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation

struct AccountResponseDO: Codable {
    let accounts: [AccountDO]
    let failedAccountTypes: String
    let returnCode: String
}
