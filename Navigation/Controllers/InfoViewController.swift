//
//  InfoViewController.swift
//  Navigation
//
//  Created by Дмитрий Агафонов on 10.06.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    let alertButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Alert", for: .normal)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemOrange
       
        setupViews()
    }
    
    @objc private func showAlert() {
        let alert = UIAlertController(title: "Внимание!", message: "Warning!",
                                      preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "OK1", style: .default) { action in
            print("Ok-1")
        }
        let action2 = UIAlertAction(title: "OK2", style: .destructive) { action in
            print("Ok-2")
        }
        alert.addAction(action1)
        alert.addAction(action2)
        present(alert, animated: true)
    }
    
    private func setupViews() {
        
        view.addSubview(alertButton)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(showAlert))
        alertButton.addGestureRecognizer(gesture)
        
        NSLayoutConstraint.activate([
            alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            alertButton.widthAnchor.constraint(equalToConstant: 200),
            alertButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
