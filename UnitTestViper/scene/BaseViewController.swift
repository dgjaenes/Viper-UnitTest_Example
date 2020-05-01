//
//  BaseViewController.swift
//
//  Created by David GJ on 24/11/2019.
//  Copyright © 2019 David GJ. All rights reserved.
//

import Foundation
import UIKit

//feuture protocol

protocol PresenterProtcocol: class {
    func viewDidLoad(viewProtocol: ViewProtocol)
}

protocol ViewProtocol: class {
}

protocol NavigatorProtocol: class {
}

//BaseView

protocol BaseViewProtocol {
    func showLoading()
    func hideLoading()
}

class BaseViewController : UIViewController, BaseViewProtocol {
    
    class var storyboardName: String {
        fatalError("FatalError: View controller storyboard not set")
    }
    
    class var viewControllerIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
    class func create<T>() -> T where T: BaseViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier) as? T else {
            fatalError("View Controller not found!!")
        }
        return viewController
    }
    
    func showLoading() {
        print("show loading")
    }
    
    func hideLoading() {
        print("hide loading and show data")
    }
    
}
