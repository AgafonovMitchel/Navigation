//
//  FeedViewController.swift
//  Navigation
//
//  Created by Дмитрий Агафонов on 04.06.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    let toPostButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Go to the post", for: .normal)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemTeal
        title = "Feed"
        setupViews()
        
    }
    
    @objc func toPostAction(_ sender: UIButton) {
        let post = Post(title: "О чем будет новость")
        let vc = PostViewController(post: post)
        navigationController?.pushViewController(vc, animated: true)
  
    }
    
    private func setupViews() {
        
        view.addSubview(toPostButton)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(toPostAction))
        toPostButton.addGestureRecognizer(gesture)
        
        NSLayoutConstraint.activate([
            toPostButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toPostButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            toPostButton.widthAnchor.constraint(equalToConstant: 200),
            toPostButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
