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
    
    var number: NumberModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initDataWith(val: 3)
        updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initDataWith(val:Int) {
        number = NumberModel(value: val)
    }
    
    /**
     Nếu bây giờ ta thay đổi format kết quả phải là số có 2 chữ số trở lên thì cần thay đổi method updateUI mà không cần phải edit ở cả 3 chỗ như trước
     */
    func updateUI() {
//        numberLabel.text = "\(number.getValue())"
        numberLabel.text = String(format: "%02d", number.getValue())
        decreaseButton.isEnabled = number.getValue() > 0
    }
    
    @IBAction func decreaseAction(_ sender: UIButton) {
        number.setValue(value: number.getValue() - 1)
        updateUI()
    }
    
    @IBAction func increaseAction(_ sender: UIButton) {
        number.setValue(value: number.getValue() + 1)
        updateUI()
    }
}

/**
 Mô hình MVC dù đã hoàn thành nhiệm vụ phân tách được View - Model tuy nhiên cũng còn những điểm yếu như:
 
 - Logic của Controller dễ phình to (trở thành massive controller) do tương lai phải quản lý cả logic của View như: animation, show các popup nếu có, bặt tắt các control tương ứng, … và logic để thao tác với data => khó bảo trì và mở rộng.
 
 - Vì các phương thức của controller phải làm việc với cả View và Model nên sẽ gây khó khăn khi tạo các lớp mock cho Unit Test => Khó test
 */
