//
//  AccountReposiroryTest.swift
//  Test
//
//  Created by David GJ on 03/05/2020.
//  Copyright © 2020 David GJ. All rights reserved.
//

import XCTest
@testable import UnitTestViper


class AccountReposiroryTest: XCTestCase {
    
    override func setUp() {
         // Put setup code here. This method is called before the invocation of each test method in the class.
     }

     override func tearDown() {
         // Put teardown code here. This method is called after the invocation of each test method in the class.
     }

    func testRepositoryExample() {
        
        let repository = AccountRepositotyStub()
        let responseAccount = repository.getAccount()
        
        XCTAssert(responseAccount.0 != nil)
        
        if responseAccount.0 != nil {
            let accounts = responseAccount.0?.accounts.map({
                     Account(accountDo: $0)
                 })
                 
            XCTAssertEqual(accounts?.count, 3, "error")
             }
    }
}
