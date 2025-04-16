//
//  UserInfoViewController.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//  
//

import UIKit
import SnapKit
import SDWebImage

class UserInfoViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: ViewToPresenterUserInfoProtocol?
    
    // MARK: - Private Properties
    private lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 50
        imageView.backgroundColor = .lightGray
        imageView.image = UIImage(named: "user_image")
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18.0)
        label.textColor = .darkGray
        label.text = "Amjad Khan"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var descLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12.0)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Real programmers don't comment their code. If it was hard to write, it should be hard to understand."
        return label
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter?.viewDidLoad()
    }

    private func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(userImageView)
        userImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.width.height.equalTo(100)
            $0.centerX.equalToSuperview()
        }
        
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(userImageView.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        view.addSubview(descLabel)
        descLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
    }
    
}

extension UserInfoViewController: PresenterToViewUserInfoProtocol{
    // TODO: Implement View Output Methods
    func showUserInformation(with name: String, imageUrl: URL) {
        DispatchQueue.main.async {
            self.nameLabel.text = name
            self.userImageView.sd_setImage(with: imageUrl, placeholderImage: UIImage(named: "user_image"))
        }
    }
}
