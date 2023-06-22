//
//  PostViewController.swift
//  Navigation
//
//  Created by Дмитрий Агафонов on 08.06.2023.
//

import UIKit

class PostViewController: UIViewController {

    let post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        title = post.title
        setupPostInfoButton()
    }
    
    @objc private func toPostInfoAction() {
        let vc = InfoViewController()
        vc.modalPresentationStyle = .pageSheet
        vc.modalTransitionStyle = .coverVertical
        
        present(vc, animated: true)
    }
    
    private func setupPostInfoButton() {
        let image = UIImage(systemName: "info.circle")
        let button = UIBarButtonItem(
            image: image,
            style: .done,
            target: self,
            action: #selector(toPostInfoAction)
        )
        navigationItem.setRightBarButton(button, animated: true)
    }
}
