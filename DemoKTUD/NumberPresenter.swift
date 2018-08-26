//
//  NumberPresenter.swift
//  DemoKTUD
//
//  Created by MINATO on 8/27/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

protocol NumberViewDelegate: class {
    func setTextNumber(text: String)
    func updateDecreaseControl(enabled: Bool)
}

class NumberPresenter {
    private var numberModel: NumberModel?
    private weak var numberView: NumberViewDelegate?
    
    init(model: NumberModel) {
        self.numberModel = model
    }
    
    func attach(view: NumberViewDelegate) {
        self.numberView = view
        
        updateView()
    }
    
    func increaseNumber() {
        guard let numberModel = self.numberModel else { return }
        numberModel.setValue(value: numberModel.getValue() + 1)
        
        updateView()
    }
    
    func decreaseNumber() {
        guard let numberModel = self.numberModel else { return }
        
        let currentValue = numberModel.getValue()
        if currentValue <= 0 { return }
        
        numberModel.setValue(value: currentValue - 1)
        
        self.updateView()
    }
    
    private func updateView() {
        guard let numberModel = self.numberModel,
            let numberView = self.numberView
            else { return }
        
        let text = String(format: "%02d", arguments: [numberModel.getValue()])
        numberView.setTextNumber(text: text)
        
        numberView.updateDecreaseControl(enabled: numberModel.getValue() > 0)
    }
}
