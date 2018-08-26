//
//  NumberVC.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var decreaseButton: UIButton!
    
    var numberPresenter: NumberPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberPresenter?.getNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func decreaseAction(_ sender: UIButton) {
        numberPresenter?.decrease()
    }
    
    @IBAction func increaseAction(_ sender: UIButton) {
        numberPresenter?.increase()
    }
}


extension NumberViewController: NumberView {
    
    // Adopt NumberView
    func setTextNumber(text: String) {
        numberLabel.text = text
    }
    
    func updateDecreaseControl(enabled: Bool) {
        decreaseButton.isEnabled = enabled
    }
}
