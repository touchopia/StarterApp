//
//  FirstViewController.swift
//  ProfileApp
//
//  Created by Phil Wright on 4/14/25.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .random
        
        setupUI()
    }
    
    func setupUI() {
        
        let button = UIButton(type: .roundedRect)
        button.setTitle("Go to Second View", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    @objc func buttonTapped() {
        let secondVC = UIViewController()
        secondVC.view.backgroundColor = .random
        
        
        self.navigationController?.pushViewController(secondVC, animated: false)
    }

}

