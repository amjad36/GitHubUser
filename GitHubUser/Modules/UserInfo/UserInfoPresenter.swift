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
    
    // MARK: Private Properties
    var user: GitUser?
    
    // MARK: Functions
    func viewDidLoad() {
        interactor?.fetchUserInformation()
    }
}

extension UserInfoPresenter: InteractorToPresenterUserInfoProtocol {
    func fetchUserInformationSuccessfully(with user: GitUser) {
        self.user = user
        view?.showUserInformation(with: user.name, imageUrl: user.photo)
    }
    
    func failedToFetchUserInformation(with error: NetworkError) {
        print(error.localizedDescription)
    }
}
