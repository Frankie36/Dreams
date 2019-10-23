//
//  DreamTableViewCell.swift
//  Dreamz
//
//  Created by Francis Ngunjiri on 23/10/2019.
//  Copyright © 2019 Francis Ngunjiri. All rights reserved.
//

import UIKit

class DreamTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTag: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
