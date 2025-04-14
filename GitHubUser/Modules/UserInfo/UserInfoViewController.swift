//
//  UserInfoViewController.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//  
//

import UIKit

class UserInfoViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }

    // MARK: - Properties
    var presenter: ViewToPresenterUserInfoProtocol?
    
}

extension UserInfoViewController: PresenterToViewUserInfoProtocol{
    // TODO: Implement View Output Methods
}
