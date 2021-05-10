//
//  DreamTableViewCell.swift
//  MyMonee
//
//  Created by MacBook on 08/05/21.
//

import UIKit

protocol DreamTableViewCellDelegate: AnyObject {
    func actionButton(with title: String)
}

class DreamTableViewCell: UITableViewCell {
    
    weak var delegate: DreamTableViewCellDelegate?
    
    static let Identifier = "DreamTableViewCell"
    
    @IBOutlet var dreamTitle: UILabel!
    @IBOutlet var money: UILabel!
    @IBOutlet var progress: UIProgressView!
    @IBOutlet var btnDelete: UIButton!
    
    static func nib() -> UINib{
        return UINib(nibName: "DreamTableViewCell", bundle: nil)
    }
    
    private var title: String = ""
    @IBAction func actionButton(){
        delegate?.actionButton(with: title)
    }
    
    func configure(with title: String) {
        self.title = title
        btnDelete.setTitle(title, for: .normal)
    }
}
