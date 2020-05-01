//
//  InitSceneStub.swift
//  Test
//
//  Created by David GJ on 23/04/2020.
//  Copyright © 2020 David GJ. All rights reserved.
//

import Foundation
@testable import UnitTestViper

class InitPresenterStub: InitPresenterProtcocol {
    
    var executed = ""
    
    func btnAllTapped() {
       executed = "all"
    }
    
    func btnVisibleTapped() {
        executed = "visibleOnly"
    }
    
    func viewDidLoad(viewProtocol: ViewProtocol) {
        executed = "showView"
    }
    
    
}
