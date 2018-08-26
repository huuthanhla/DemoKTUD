//
//  NumberInteractor.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

class NumberInteractor: NumberInteractorInput {
    
    var numberEntity:NumberEntity?
    weak var numberPresenter:NumberInteractorOutput?
    
    
    init(entity:NumberEntity) {
        self.numberEntity = entity
    }
    
    // Adopt NumberInteractorInput
    func getCurrentValue() {
        let currentValue = self.numberEntity?.getValue() ?? 0
        
        self.numberPresenter?.setNumber(number: currentValue)
    }
    
    func increase() {
        let currentValue = self.numberEntity?.getValue() ?? 0
        let newValue = currentValue + 1
        self.numberEntity?.setValue(value: newValue)
        
        self.numberPresenter?.setNumber(number: newValue)
    }
    
    func decrease() {
        let currentValue = self.numberEntity?.getValue() ?? 0
        let newValue = currentValue - 1
        
        self.numberEntity?.setValue(value: newValue)
        
        self.numberPresenter?.setNumber(number: newValue)
    }
}
