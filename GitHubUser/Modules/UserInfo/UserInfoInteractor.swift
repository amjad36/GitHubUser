//
//  UserInfoInteractor.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//  
//

import Foundation

class UserInfoInteractor: PresenterToInteractorUserInfoProtocol {

    // MARK: Properties
    var presenter: InteractorToPresenterUserInfoProtocol?
    var httpUtility: any HttpUtilityProtocol
    
    init(httpUtility: HttpUtilityProtocol = HttpUtility()) {
        self.httpUtility = httpUtility
    }
    
    // MARK: Functions
    func fetchUserInformation() {
        Task {
            do {
                let user: GitUser = try await httpUtility.load(from: "https://fake-json-api.mock.beeceptor.com/users/1")
                presenter?.fetchUserInformationSuccessfully(with: user)
            }
            catch(let error as NetworkError) {
                presenter?.failedToFetchUserInformation(with: error)
            }
        }
    }
}
