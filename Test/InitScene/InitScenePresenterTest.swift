//
//  InitScenePresenterTest.swift
//  Test
//
//  Created by David GJ on 23/04/2020.
//  Copyright © 2020 David GJ. All rights reserved.
//

import XCTest
@testable import UnitTestViper

class InitScenePresenterTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPresenterExample() {
        let presenter = cretaePresenter()
        guard let presenterTest = presenter as? InitPresenterStub else {
            return
        }
        presenterTest.btnAllTapped()
        XCTAssertEqual(presenterTest.executed, "all", "error")
        
        presenterTest.executed = ""
        presenterTest.btnVisibleTapped()
        XCTAssertEqual(presenterTest.executed, "visibleOnly", "error")
    }
    
    // MARK: - Helpers

    private func cretaePresenter() -> InitPresenterProtcocol {
        return InitPresenterStub()
    }
}
