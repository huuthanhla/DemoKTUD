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
    
    private let numberViewModel = NumberViewModel(number: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Listen data stream from View Model
        numberViewModel.numberString?.bindAndFire(hdl: { [weak self] (text) in
            self?.numberLabel.text = text
        })
        
        numberViewModel.decreaseEnabled?.bindAndFire(hdl: { [weak self] (enabled) in
            self?.decreaseButton.isEnabled = enabled
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func decreaseAction(_ sender: UIButton) {
        numberViewModel.decreaseNumber()
    }
    
    @IBAction func increaseAction(_ sender: UIButton) {
        numberViewModel.increaseNumber()
    }
}
