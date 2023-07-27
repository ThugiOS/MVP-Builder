//
//  ModuleBuilder.swift
//  MVP+Builder
//
//  Created by Никитин Артем on 27.07.23.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = User.init(firstName: "Artem", lastName: "Nikitin")
        let view = HomeView()
        
        let presenter = HomePresenter(view: view, model: model)
        
        view.presenter = presenter
        return view
    }
}
