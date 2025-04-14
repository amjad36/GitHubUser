//
//  UserInfoPresenter.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//  
//

import Foundation

class UserInfoPresenter: ViewToPresenterUserInfoProtocol {

    // MARK: Properties
    var view: PresenterToViewUserInfoProtocol?
    var interactor: PresenterToInteractorUserInfoProtocol?
    var router: PresenterToRouterUserInfoProtocol?
}

extension UserInfoPresenter: InteractorToPresenterUserInfoProtocol {
    
}
