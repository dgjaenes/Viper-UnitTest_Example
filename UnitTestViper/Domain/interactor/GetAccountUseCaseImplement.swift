//
//  GetAccountUseCase.swift
//
//  Created by David GJ on 23/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation

class GetAccountUseCaseImplement: GetAccountUseCase {
    
    let repository: AccountRepository
    
    init(repository: AccountRepository) {
        self.repository = repository
    }
    
    func getAccount(visibleFilter: Bool) -> ([Account]?, error: String?) {
        
        let responseAccount = repository.getAccount()
        
        if responseAccount.0 != nil {
            var accounts = responseAccount.0?.accounts.map({
                Account(accountDo: $0)
            })
            
            if visibleFilter {
               accounts = accounts?.filter( {$0.isVisible == true })
            }
            
            return (accounts, nil)
        } else {
            return (nil, responseAccount.error ?? nil)
        }
    }
    
}
