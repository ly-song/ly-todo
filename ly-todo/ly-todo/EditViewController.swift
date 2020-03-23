//
//  EditViewController.swift
//  ly-todo
//
//  Created by Leeyoung Song on 2020/03/01.
//  Copyright © 2020 Leeyoung Song. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btnSave.title = "NAME"
        textField.text = ""
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var btnSave: UIBarButtonItem!
    @IBOutlet weak var textField: UITextView!
    
    @IBAction func onSave(_ sender: Any) {
        var value = textField.text
    }
}
