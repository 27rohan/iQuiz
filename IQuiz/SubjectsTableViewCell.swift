//
//  SubjectsTableViewCell.swift
//  IQuiz
//
//  Created by Rohan Thakkar on 11/15/16.
//  Copyright © 2016 Rohan Thakkar. All rights reserved.
//


import UIKit

class SubjectCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
