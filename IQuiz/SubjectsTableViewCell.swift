//
//  SubjectsTableViewCell.swift
//  iQuiz
//
//  Created by Rohan Thakkar on 11/15/16.
//  Copyright © 2016 Lit Phansiri. All rights reserved.

//

import UIKit

class SubjectsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var descrLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
