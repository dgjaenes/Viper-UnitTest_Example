//
//  AccountRepositotyStub.swift
//  Test
//
//  Created by David GJ on 03/05/2020.
//  Copyright © 2020 David GJ. All rights reserved.
//

import Foundation
@testable import UnitTestViper

class AccountRepositotyStub: AccountRepository {
    func getAccount() -> (AccountResponseDO?, error: String?) {
        return localResponse()
    }
    
    private func localResponse() -> (AccountResponseDO?, error: String?) {
            do {
                
                if let file = Bundle.main.url(forResource: "Accounts", withExtension: "json") {
                    
                    let data = try Data(contentsOf: file)
                    do {
                        let response = try JSONDecoder().decode(AccountResponseDO.self, from: data)
                        return (response, nil)
                    } catch(let error) {
                        print(error)
                    }

                } else {
                    return (nil, "No file")
                }
            } catch {
                
                print(error.localizedDescription)
            }
            
            return (nil, nil)
    }
}
