//
//  HistoryTableViewCell.swift
//  MyMonee
//
//  Created by MacBook on 09/05/21.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    static let Identifier = "HistoryTableViewCell"
    
    @IBOutlet var historyTitle: UILabel!
    @IBOutlet var historyDate: UILabel!
    @IBOutlet var historyBalance: UILabel!
    @IBOutlet var imgaeStatus: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
