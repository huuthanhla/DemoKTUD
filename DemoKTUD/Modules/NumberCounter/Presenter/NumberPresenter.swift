//
//  NumberPresenter.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

class NumberPresenter: NumberPresenterProtocol, NumberInteractorOutput {
    
    weak var numberView: NumberView?
    weak var numberInteractor: NumberInteractorInput?
    
    var numberWireframe: NumberWireframe? // not use in this project
    
    // Adopt NumberPresenterProtocol
    func increase() {
        numberInteractor?.increase()
    }
    
    func decrease() {
        numberInteractor?.decrease()
    }
    
    func getNumber() {
        numberInteractor?.getCurrentValue()
    }
    
    private func format(number:Int) -> String {
        return String(format: "%02d", arguments: [number])
    }
    
    // Adopt NumberInteractorOutput
    func setNumber(number: Int) {
        let text = format(number: number)
        
        numberView?.setTextNumber(text: text)
        numberView?.updateDecreaseControl(enabled: number > 0)
    }
}
