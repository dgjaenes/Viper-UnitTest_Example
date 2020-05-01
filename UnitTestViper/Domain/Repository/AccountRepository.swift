//
//  AccountRepositori.swift
//
//  Created by David GJ on 22/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation

protocol AccountRepository {
    func getAccount() -> (AccountResponseDO?, error: String?)
}
