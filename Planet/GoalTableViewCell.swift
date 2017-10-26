//
//  GoalTableViewCell.swift
//  Planet
//
//  Created by Josh Martine on 10/24/17.
//  Copyright © 2017 Josh Martine. All rights reserved.
//

import UIKit

class GoalTableViewCell: UITableViewCell {
    //MARK: - Properties
    @IBOutlet weak var completeButton: UIButton!
    @IBOutlet weak var goalTitle: UILabel!
    @IBOutlet weak var goalDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
