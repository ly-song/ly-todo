//
//  ViewController.swift
//  ly-todo
//
//  Created by Leeyoung Song on 2020/01/22.
//  Copyright © 2020 Leeyoung Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
        label.text = textField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

