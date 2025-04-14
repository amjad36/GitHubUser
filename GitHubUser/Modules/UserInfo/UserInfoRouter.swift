//
//  UserInfoRouter.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//  
//

import Foundation
import UIKit

class UserInfoRouter: PresenterToRouterUserInfoProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = UserInfoViewController()
        
        let presenter: ViewToPresenterUserInfoProtocol & InteractorToPresenterUserInfoProtocol = UserInfoPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = UserInfoRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = UserInfoInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
