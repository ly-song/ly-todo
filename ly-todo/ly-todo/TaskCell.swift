//
//  TaskCell.swift
//  ly-todo
//
//  Created by Leeyoung Song on 2020/02/04.
//  Copyright © 2020 Leeyoung Song. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var toDoText: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func editChanged(_ sender: UITextField) {
        print("\(String(describing: sender.text))")
        
    }
}
