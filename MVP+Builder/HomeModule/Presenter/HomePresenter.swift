//
//  HomePresenter.swift
//  MVP+Builder
//
//  Created by Никитин Артем on 27.07.23.
//

import Foundation

protocol HomeViewProtocol: AnyObject {
    func setNameTitle(fullUserName: String)
}

protocol HomeViewPresenterProtocol: AnyObject {
    init(view: HomeViewProtocol, model: User)
    
    func showNameTitle()
}

class HomePresenter: HomeViewPresenterProtocol {
    
    let view: HomeViewProtocol
    let model: User
    
    required init(view: HomeViewProtocol, model: User) {
        self.view = view
        self.model = model
    }
    
    func showNameTitle() {
        let fullUserName = model.firstName + " " + model.lastName
        self.view.setNameTitle(fullUserName: fullUserName)
    }
}
