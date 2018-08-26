//
//  DataBinding.swift
//  DemoKTUD
//
//  Created by MINATO on 8/27/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import Foundation

class DataBinding<T> {
    typealias Handler = (T) -> Void
    private var handlers: [Handler] = []
    
    var value: T {
        didSet {
            self.fire()
        }
    }
    
    init(value: T) {
        self.value = value
    }
    
    func bind(hdl: @escaping Handler) {
        self.handlers.append(hdl)
    }
    
    func bindAndFire(hdl: @escaping Handler) {
        self.bind(hdl: hdl)
        self.fire()
    }
    
    private func fire() {
        for hdl in self.handlers {
            hdl(value)
        }
    }
}
