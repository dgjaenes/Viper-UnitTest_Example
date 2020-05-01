//
//  GetAccountUseCaseu.swift
//
//  Created by David GJ on 23/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation


protocol GetAccountUseCase {
    func getAccount(visibleFilter: Bool) -> ([Account]?, error: String?)
}
