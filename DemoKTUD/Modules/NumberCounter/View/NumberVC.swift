//
//  NumberVC.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NumberView {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var decreaseButton: UIButton!
    
    var numberPresenter:NumberPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.numberPresenter?.getNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func decreaseAction(_ sender: UIButton) {
        self.numberPresenter?.decrease()
    }
    
    @IBAction func increaseAction(_ sender: UIButton) {
        self.numberPresenter?.increase()
    }
    
    // Adopt NumberView
    func setTextNumber(text: String) {
        self.numberLabel.text = text
    }
    
    func updateDecreaseControl(enabled: Bool) {
        self.decreaseButton.isEnabled = enabled
    }
}

