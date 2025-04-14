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
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterUserInfoProtocol {
    
    var view: PresenterToViewUserInfoProtocol? { get set }
    var interactor: PresenterToInteractorUserInfoProtocol? { get set }
    var router: PresenterToRouterUserInfoProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorUserInfoProtocol {
    
    var presenter: InteractorToPresenterUserInfoProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterUserInfoProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterUserInfoProtocol {
    
}
