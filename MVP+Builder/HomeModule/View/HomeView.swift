//
//  HomeView.swift
//  MVP+Builder
//
//  Created by Никитин Артем on 27.07.23.
//

import UIKit

class HomeView: UIViewController {
    
    var presenter: HomeViewPresenterProtocol! 
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.text = "Name Lastname"
        return label
    }()
    private let button: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = .gray
        button.setTitle("Button", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        self.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .darkGray
        
        self.view.addSubview(nameLabel)
        self.view.addSubview(button)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200.0),
            nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            button.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 20.0),
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 100.0),
            button.heightAnchor.constraint(equalToConstant: 44.0),
        ])
    }
    
    @objc private func buttonTapped() {
        self.presenter.showNameTitle()
    }
}

extension HomeView: HomeViewProtocol {
    func setNameTitle(fullUserName: String) {
        self.nameLabel.text = fullUserName
    }
  
}
