//
//  ViewController.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var decreaseButton: UIButton!
    
    private let numberPresenter = NumberPresenter(model: NumberModel(value: 3))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberPresenter.attach(view: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func decreaseAction(_ sender: UIButton) {
        numberPresenter.decreaseNumber()
    }
    
    @IBAction func increaseAction(_ sender: UIButton) {
        numberPresenter.increaseNumber()
    }
}

extension ViewController: NumberViewDelegate {
    
    // Implement methods from NumberView
    func setTextNumber(text: String) {
        numberLabel.text = text
    }
    
    func updateDecreaseControl(enabled: Bool) {
        decreaseButton.isEnabled = enabled
    }
}
