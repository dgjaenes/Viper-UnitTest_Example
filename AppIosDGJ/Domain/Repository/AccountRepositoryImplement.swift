//
//  AccountRepositoryImplement.swift
//  AppIosDGJ
//
//  Created by David GJ on 22/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation

class AccountRepositoryImplement: AccountRepository {
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

