//
//  WireFrame.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import UIKit

class NumberWireframe {
    
    var interactor: NumberInteractor!
    var presenter: NumberPresenter!
    
    func getModule(initNumber numb: Int) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let view = storyboard.instantiateViewController(withIdentifier: String(describing: NumberViewController.self)) as! NumberViewController
        let entity = NumberEntity(value: 3)
        let presenter = NumberPresenter()
        let interactor = NumberInteractor(entity: entity)
        
        view.numberPresenter = presenter
        presenter.numberView = view
        interactor.numberPresenter = presenter
        presenter.numberInteractor = interactor
        presenter.numberWireframe = self
        
        self.interactor = interactor
        self.presenter = presenter
        
        return view
    }
}
