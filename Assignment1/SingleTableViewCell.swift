//
//  SingleTableViewCell.swift
//  Assignment1
//
//  Created by Nishant on 17/08/20.
//  Copyright © 2020 Nishant. All rights reserved.
//

import UIKit

class SingleTableViewCell: UITableViewCell {

    @IBOutlet weak var lblFacultyIndex: UILabel!
    @IBOutlet weak var lblFacultyName: UILabel!
    @IBOutlet weak var lblStudentIndex: UILabel!
    @IBOutlet weak var lblStudentName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
