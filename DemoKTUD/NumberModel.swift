//
//  NumberModel.swift
//  DemoKTUD
//
//  Created by MINATO on 8/27/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

class NumberModel {
    private var value: Int = 0
    
    init(value: Int) {
        self.value = value
    }
    
    func getValue() -> Int {
        return value
    }
    
    func setValue(value: Int) {
        self.value = value
    }
}
