//
//  UseCaseProvaider.swift
//
//  Created by David GJ on 24/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation


struct UseCaseProvaider {
    static func getAccountUseCase() -> GetAccountUseCase {
        return GetAccountUseCaseImplement(repository: AccountRepositoryImplement())
    }
}
