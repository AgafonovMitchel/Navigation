//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Дмитрий Агафонов on 04.06.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileHeaderView: ProfileHeaderView = {
        let view = ProfileHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let buttonController: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Some Button", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 16
       
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        view.backgroundColor = .systemGray4
        title = "Profile"
        view.addSubview(profileHeaderView)
        view.addSubview(buttonController)
        
        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            buttonController.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonController.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            buttonController.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
