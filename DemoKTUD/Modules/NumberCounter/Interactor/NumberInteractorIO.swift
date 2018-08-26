//
//  NumberInteractorIO.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

protocol NumberInteractorInput: class {
    func increase()
    func decrease()
    func getCurrentValue()
}

protocol NumberInteractorOutput: class {
    func setNumber(number: Int)
}
