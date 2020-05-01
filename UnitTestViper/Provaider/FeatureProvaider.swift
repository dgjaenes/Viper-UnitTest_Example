//
//  FeatureProvaider.swift
//
//  Created by David GJ on 23/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation
import UIKit


struct FeaturesProvider {
    static func buildDefaultView() -> InitViewController {
        let view: InitViewController = InitViewController.create()

        let presenter = InitPresenter()
        let navigator = InitNavigator()
        presenter.navigator = navigator
        presenter.usecase = UseCaseProvaider.getAccountUseCase()
        view.presenter = presenter
        
        return view
    }
}


