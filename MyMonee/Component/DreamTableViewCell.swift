//
//  DreamTableViewCell.swift
//  MyMonee
//
//  Created by MacBook on 08/05/21.
//

import UIKit

class DreamTableViewCell: UITableViewCell {
    
    static let Identifier = "DreamTableViewCell"
    
    @IBOutlet var dreamTitle: UILabel!
    @IBOutlet var money: UILabel!
    @IBOutlet var progress: UIProgressView!
    @IBOutlet var alert: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
