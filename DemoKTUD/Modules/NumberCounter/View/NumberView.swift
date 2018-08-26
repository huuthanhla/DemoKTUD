//
//  NumberView.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

protocol NumberView: class {
    func setTextNumber(text: String)
    func updateDecreaseControl(enabled: Bool)
}
