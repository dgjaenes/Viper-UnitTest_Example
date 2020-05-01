//
//  BasePresenter.swift
//
//  Created by David GJ on 23/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation

protocol InitPresenterProtcocol: PresenterProtcocol {
    func btnAllTapped()
    func btnVisibleTapped()
}

class InitPresenter: InitPresenterProtcocol {
    
    weak var view: FirstViewProtocol?
    weak var navigator: NavigatorProtocol?
    var usecase: GetAccountUseCase?
    
    func viewDidLoad(viewProtocol: ViewProtocol) {
        self.view = viewProtocol as? FirstViewProtocol
    }
    
    func btnAllTapped() {
        getAccounts(visibleFilter: false)
    }
    
    func btnVisibleTapped() {
        getAccounts(visibleFilter: true)
    }
    
    private func getAccounts(visibleFilter: Bool){
        let accountResponse = usecase?.getAccount(visibleFilter: visibleFilter)
        if let account = accountResponse?.0 {
            let list = account.map({
                $0.getDecription()
            })
                view?.showTableView(list: list)
            
        } else {
            print(accountResponse?.error ?? "")
        }
    }
}
