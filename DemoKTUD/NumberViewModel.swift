//
//  NumberViewModel.swift
//  DemoKTUD
//
//  Created by MINATO on 8/27/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

class NumberViewModel {
    private var numberModel: NumberModel?
    var numberString: DataBinding<String>?
    var decreaseEnabled: DataBinding<Bool>?
    
    init(number:Int) {
        numberModel = NumberModel(value: number)
        
        numberString = DataBinding(value: formatNumber(number: number))
        decreaseEnabled = DataBinding(value: number > 0)
    }
    
    func increaseNumber() {
        guard let numberModel = self.numberModel else { return }
        numberModel.setValue(value: numberModel.getValue() + 1)
        
        updateViewWithFireEvents()
    }
    
    func decreaseNumber() {
        guard let numberModel = self.numberModel else { return }
        
        let currentValue = numberModel.getValue()
        if currentValue <= 0 { return }
        
        numberModel.setValue(value: currentValue - 1)
        
        updateViewWithFireEvents()
    }
    
    private func formatNumber(number:Int) -> String {
        return String(format: "%02d", arguments: [number])
    }
    
    private func updateViewWithFireEvents() {
        guard let numberModel = self.numberModel else { return }
        
        let currentValue = numberModel.getValue()
        let text = formatNumber(number: currentValue)
        
        // Fire event
        numberString?.value = text
        decreaseEnabled?.value = currentValue > 0
    }
}
