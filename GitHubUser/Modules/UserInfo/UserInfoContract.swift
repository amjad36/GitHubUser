//
//  UserInfoContract.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewUserInfoProtocol {
    func showUserInformation(with name: String, imageUrl: URL)
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterUserInfoProtocol {
    
    var view: PresenterToViewUserInfoProtocol? { get set }
    var interactor: PresenterToInteractorUserInfoProtocol? { get set }
    var router: PresenterToRouterUserInfoProtocol? { get set }
    
    func viewDidLoad()
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorUserInfoProtocol {
    
    var presenter: InteractorToPresenterUserInfoProtocol? { get set }
    var httpUtility: HttpUtilityProtocol { get set }
    
    func fetchUserInformation()
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterUserInfoProtocol {
    func fetchUserInformationSuccessfully(with user: GitUser)
    func failedToFetchUserInformation(with error: NetworkError)
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterUserInfoProtocol {
    
}
